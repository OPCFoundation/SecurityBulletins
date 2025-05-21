# Security Update for Local Discovery Services (LDS)

|||
|---|---|
|**Publication Date**|2017-07-27|
|**Version**|1.0.0|
|**Status**|final|

|||
|---|---|
|**Publisher**|OPC Foundation|
|**Publisher Type**|vendor|
|**Namespace**|[https://opcfoundation.org/security/csaf](https://opcfoundation.org/security/csaf)|
|||

## Affected Products

- LDS.02.335.1
- LDS.1.03.348
- LDS-1.03.355
- LDS-1.03.362

## Vulnerabilities
### CVE-2017-11672
Unquoted Service Path in LDS Allows Unauthorized Executable Execution  

### Summary
  

### Threats
- Execution of unauthorized executables

### CVSS Score
**Base Score:** <span style='color:orange'>4.4 (MEDIUM)</span>  
**Vector:**: [CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:N/A:H/E:F/RL:O/RC:C/CR:L/IR:M/AR:M/MAV:L/MAC:L/MPR:H/MUI:N/MS:U/MC:N/MI:N/MA:H](https://www.first.org/cvss/calculator/3-0#CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:N/A:H/E:F/RL:O/RC:C/CR:L/IR:M/AR:M/MAV:L/MAC:L/MPR:H/MUI:N/MS:U/MC:N/MI:N/MA:H)  

### Remediations
**Vendor Fix** ([link]())  
Update LDS to version 1.03.367 or later.  

### Acknowledgments
- Members of the OPC community of OPC Foundation for Recognition for reporting the vulnerability.

##  References

[MITRE CVE entry](https://www.cve.org/CVERecord?id=CVE-2017-11672)  
[OPC LDS Download and Info](https://opcfoundation.org/developer-tools/developer-kits-unified-architecture/local-discovery-server-lds/)  

##  Legal Disclaimer

The information provided in this disclosure is provided 'as is' without warranty of any kind. OPC Foundation disclaims all warranties, either express or implied, including the warranties of merchantability and fitness for a particular purpose. In no event shall OPC Foundation or its suppliers be liable for any damages whatsoever including direct, indirect, incidental, consequential, loss of business profits or special damages, even if OPC Foundation or its suppliers have been advised of the possibility of such damages. Some states do not allow the exclusion or limitation of liability for consequential or incidental damages so the foregoing limitation may not apply
