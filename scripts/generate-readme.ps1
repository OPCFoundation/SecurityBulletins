﻿Get-ChildItem -Filter *.json | ForEach-Object {
    $jsonFile = $_.Name
    Write-Host $jsonFile
    $outFile = "README.md"
    Write-Host $outFile

    $json = Get-Content $jsonFile -Raw | ConvertFrom-Json 

    if (Test-Path $outFile) {
        Remove-Item $outFile
    }

    $line = "# " + $json.document.title
    Add-Content -Path $outFile -Value $line

    $line = ""
    Add-Content -Path $outFile -Value $line


    if ($json.document.tracking) {
        Add-Content -Path $outFile -Value "|||"
        Add-Content -Path $outFile -Value "|---|---|"

        if ($json.document.tracking.current_release_date) {
            $line = "|**Publication Date**|" + [datetime]::Parse($json.document.tracking.current_release_date).ToString("yyyy-MM-dd") + "|"
            Add-Content -Path $outFile -Value $line
        }
        if ($json.document.tracking.version) {
            $line = "|**Version**|" + $json.document.tracking.version + "|"
            Add-Content -Path $outFile -Value $line
        }
        if ($json.document.tracking.status) {
            $line = "|**Status**|" + $json.document.tracking.status + "|"
            Add-Content -Path $outFile -Value $line
        }

        if ($json.document.distribution) {    
            if ($json.document.distribution.tlp -and $json.document.distribution.tlp.label) {
                $url = "https://www.first.org/tlp/";
                if ($json.document.distribution.tlp.url){
                    $url = $json.document.distribution.tlp.url
                }
                $line = "|**Distribution**|[" + $json.document.distribution.tlp.label + "](" + $url + ")" + "|"
                Add-Content -Path $outFile -Value $line
            }
        }
    }

    if ($json.document.publisher) {
        if ($json.document.publisher.name) {
            $line = "|**Publisher**|" + $json.document.publisher.name + "|"
            Add-Content -Path $outFile -Value $line
        }
        if ($json.document.publisher.category) {
            $line = "|**Publisher Type**|" + $json.document.publisher.category + "|"
            Add-Content -Path $outFile -Value $line
        }
        if ($json.document.publisher.namespace) {
            $line = "|**Namespace**|[" + $json.document.publisher.namespace + "](" + $json.document.publisher.namespace + ")" + "|"
            Add-Content -Path $outFile -Value $line
        }
    }

    if ($json.product_tree.branches) {    
        Add-Content -Path $outFile -Value ""
        Add-Content -Path $outFile -Value "## Affected Products"
        Add-Content -Path $outFile -Value ""
        foreach ($branch in $json.product_tree.branches) {
            if ($branch.product) {    
                $line = "- " + $branch.product.name
                Add-Content -Path $outFile -Value $line
            }
        }
    }

    if ($json.vulnerabilities) {    
        Add-Content -Path $outFile -Value ""
        Add-Content -Path $outFile -Value "## Vulnerabilities"
        foreach ($vulnerability in $json.vulnerabilities) {
            if ($vulnerability.cve) {
                $line = "### " + $vulnerability.cve
                Add-Content -Path $outFile -Value $line
            }
            else {
                if ($vulnerability.ids) {
                    $line = "### " + $vulnerability.ids[0].text
                    Add-Content -Path $outFile -Value $line
                }
            }
        
            if ($vulnerability.title) {
                $line = $vulnerability.title + "  "
                Add-Content -Path $outFile -Value $line
            }

            if ($vulnerability.notes) {
                Add-Content -Path $outFile -Value ""
                Add-Content -Path $outFile -Value "### Summary"
                $summary = $vulnerability.notes | Where-Object { $_.category -eq "summary" } | Select-Object -First 1
                $line = $summary.text + "  "
                Add-Content -Path $outFile -Value $line
            }

            if ($vulnerability.cwe) {    
                Add-Content -Path $outFile -Value ""
                $line = $vulnerability.cwe.id + " " + $vulnerability.cwe.name + "  " 
                Add-Content -Path $outFile -Value $line
            }

            if ($vulnerability.threats) {    
                Add-Content -Path $outFile -Value ""
                Add-Content -Path $outFile -Value "### Threats"
                foreach ($threat in $vulnerability.threats) {
                    $line = "- " + $threat.details
                    Add-Content -Path $outFile -Value $line
                }
            }

            if ($vulnerability.scores) {    
                Add-Content -Path $outFile -Value ""
                Add-Content -Path $outFile -Value "### CVSS Score"
                foreach ($score in $vulnerability.scores) {
                    if ($score.cvss_v3){
                    $color = "orange";
                    if ($score.cvss_v3.baseSeverity -eq "HIGH") { $color = "red"; }
                        $line = "**Base Score:** <span style='color:" + $color + "'>" + $score.cvss_v3.baseScore + " (" + $score.cvss_v3.baseSeverity + ")</span>  "
                        Add-Content -Path $outFile -Value $line
                        $line = "**Vector:**: [" + $score.cvss_v3.vectorString + "](https://www.first.org/cvss/calculator/" + $score.cvss_v3.version.Replace(".", "-") + "#" +  $score.cvss_v3.vectorString + ")  "
                        Add-Content -Path $outFile -Value $line
                    }
                }
            }

            if ($vulnerability.remediations) {    
                Add-Content -Path $outFile -Value ""
                Add-Content -Path $outFile -Value "### Remediations"
                $fix = $vulnerability.remediations | Where-Object { $_.category -eq "vendor_fix" } | Select-Object -First 1
                $first = $true
                if ($fix){
                    $line = "**Vendor Fix**" + " ([link](" + $fix.url + "))  "
                    Add-Content -Path $outFile -Value $line
                    $line = $fix.details + "  "
                    Add-Content -Path $outFile -Value $line 
                    $first = $false
                }
                $mitigation = $vulnerability.remediations | Where-Object { $_.category -eq "mitigation" } | Select-Object -First 1
                if ($mitigation){
                    if (-not $first) { Add-Content -Path $outFile -Value "  " }
                    Add-Content -Path $outFile -Value  "**Mitigation**  "
                    $line = $mitigation.details + "  "
                    Add-Content -Path $outFile -Value $line 
                    Add-Content -Path $outFile -Value "  " 
                    $first = $false
                }
                $workaround = $vulnerability.remediations | Where-Object { $_.category -eq "workaround" } | Select-Object -First 1
                if ($workaround){
                    if (-not $first) { Add-Content -Path $outFile -Value "  " }
                    Add-Content -Path $outFile -Value  "**Workaround**  "
                    $line = $workaround.details + "  "
                    Add-Content -Path $outFile -Value $line 
                    Add-Content -Path $outFile -Value "  " 
                }
            }
            if ($vulnerability.acknowledgments) {    
                Add-Content -Path $outFile -Value ""
                Add-Content -Path $outFile -Value "### Acknowledgments"
                foreach ($acknowledgment in $vulnerability.acknowledgments) {
                    $line = "- " + ($acknowledgment.names -join ",") + " of " + $acknowledgment.organization + " for " + $acknowledgment.summary
                    Add-Content -Path $outFile -Value $line
                }
            }
        }
    }


    if ($json.document.references) {    
        Add-Content -Path $outFile -Value ""
        Add-Content -Path $outFile -Value "##  References"
        Add-Content -Path $outFile -Value ""
        foreach ($reference in $json.document.references) {
            $line = "[" + $reference.summary + "](" + $reference.url + ")" + "  "
            Add-Content -Path $outFile -Value $line
        }
    }

    if ($json.document.notes) {    
        $disclaimer = $json.document.notes | Where-Object { $_.category -eq "legal_disclaimer" } | Select-Object -First 1
        if ($disclaimer) {
            Add-Content -Path $outFile -Value ""
            Add-Content -Path $outFile -Value "##  Legal Disclaimer"
            Add-Content -Path $outFile -Value ""
            Add-Content -Path $outFile -Value $disclaimer.text
        }
    }
}