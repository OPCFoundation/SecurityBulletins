# Security Update for OPC UA .NET Sample Applications

**Tracking ID:** OPC-2017-12070  
**Version:** 1.0.0  
**Status:** Final  
**Initial Release Date:** 2017-07-31  
**Current Release Date:** 2017-07-31  

## Legal Disclaimer

The information provided in this disclosure is provided 'as is' without warranty of any kind. OPC Foundation disclaims all warranties, either express or implied, including the warranties of merchantability and fitness for a particular purpose. In no event shall OPC Foundation or its suppliers be liable for any damages whatsoever including direct, indirect, incidental, consequential, loss of business profits or special damages, even if OPC Foundation or its suppliers have been advised of the possibility of such damages. Some states do not allow the exclusion or limitation of liability for consequential or incidental damages so the foregoing limitation may not apply.

## Publisher

- **Name:** OPC Foundation  
- **Category:** Vendor  
- **Namespace:** https://opcfoundation.org/security/csaf

## Vulnerability: CVE-2017-12070

### Title

Unsigned DLLs in OPC UA .NET Sample Applications Allow Arbitrary Code Execution

### Description

**Vulnerability Description:**  
Unsigned versions of the DLLs distributed by the OPC Foundation may be replaced with malicious code.

### Identifiers

- **CVE:** CVE-2017-12070  
- **GCVE ID:** GCVE-105-2017-12070

### Discovery Date

2017-07-31

### Threat

- **Category:** Impact  
- **Details:** Arbitrary code execution through unsigned DLL replacement  
- **Affected Product:** CSAFPID-01

### Remediation

- **Category:** Vendor Fix  
- **Details:** The OPC Foundation no longer provides pre-built binaries. Vendors should rebuild from signed source code.  
- **Date:** 2017-07-31  
- **Affected Product:** CSAFPID-01

### CVSS Score

- **Version:** 3.0  
- **Vector String:** `CVSS:3.0/AV:L/AC:H/PR:H/UI:R/S:U/C:L/I:H/A:H/E:U/RL:O/RC:R/CR:L/IR:L/AR:L/MAV:L/MAC:H/MPR:H/MUI:R/MS:U/MC:N/MI:H/MA:H`  
- **Base Score:** 5.8  
- **Base Severity:** Medium

### Acknowledgments

- **Reported By:** US Department of Homeland Security  
- **Organization:** US DHS  
- **Summary:** Reported the vulnerability to OPC Foundation.

## Affected Products

- **Product Family:** .NET Stack and Sample Applications  
  - **Product:** OPC UA .NET Standard Stack < 1.02.336.0  
  - **Product ID:** CSAFPID-01

## References

- [PDF version of the security bulletin](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2017-12070.pdf)
- [MITRE CVE entry](https://www.cve.org/CVERecord?id=CVE-2017-12070)
- [OPC UA .NET Stack Source Code](https://github.com/OPCFoundation/UA-.NET)