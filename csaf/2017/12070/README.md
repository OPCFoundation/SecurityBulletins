# Security Update for OPC UA .NET Sample Applications

|||
|---|---|
|**Publication Date**|2017-07-30|
|**Version**|1.0.0|
|**Status**|final|
|**Publisher**|OPC Foundation|
|**Publisher Type**|vendor|
|**Namespace**|[https://opcfoundation.org/security/csaf](https://opcfoundation.org/security/csaf)|

## Affected Products


## Vulnerabilities
### CVE-2017-12070
Unsigned DLLs in OPC UA .NET Sample Applications Allow Arbitrary Code Execution  

### Summary
  

### Threats
- Arbitrary code execution through unsigned DLL replacement

### CVSS Score
**Base Score:** <span style='color:orange'>5.8 (MEDIUM)</span>  
**Vector:**: [CVSS:3.0/AV:L/AC:H/PR:H/UI:R/S:U/C:L/I:H/A:H/E:U/RL:O/RC:R/CR:L/IR:L/AR:L/MAV:L/MAC:H/MPR:H/MUI:R/MS:U/MC:N/MI:H/MA:H](https://www.first.org/cvss/calculator/3-0#CVSS:3.0/AV:L/AC:H/PR:H/UI:R/S:U/C:L/I:H/A:H/E:U/RL:O/RC:R/CR:L/IR:L/AR:L/MAV:L/MAC:H/MPR:H/MUI:R/MS:U/MC:N/MI:H/MA:H)  

### Remediations
**Vendor Fix** ([link]())  
The OPC Foundation no longer provides pre-built binaries. Vendors should rebuild from signed source code.  

### Acknowledgments
- US Department of Homeland Security of US DHS for Reported the vulnerability to OPC Foundation.

##  References

[PDF version](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2017-12070.pdf)  
[MITRE CVE entry](https://www.cve.org/CVERecord?id=CVE-2017-12070)  
[OPC UA .NET Stack Source Code](https://github.com/OPCFoundation/UA-.NET)  

##  Legal Disclaimer

The information provided in this disclosure is provided 'as is' without warranty of any kind. OPC Foundation disclaims all warranties, either express or implied, including the warranties of merchantability and fitness for a particular purpose. In no event shall OPC Foundation or its suppliers be liable for any damages whatsoever including direct, indirect, incidental, consequential, loss of business profits or special damages, even if OPC Foundation or its suppliers have been advised of the possibility of such damages. Some states do not allow the exclusion or limitation of liability for consequential or incidental damages so the foregoing limitation may not apply
