# Security Update for the Local Discovery Server (LDS)

**Tracking ID:** OPC-2017-12-06-17443  
**Version:** 1.0.0  
**Status:** Final  
**Initial Release Date:** 2017-12-06  
**Current Release Date:** 2017-12-06  

## Legal Disclaimer

The information provided in this disclosure is provided 'as is' without warranty of any kind. OPC Foundation disclaims all warranties, either express or implied, including the warranties of merchantability and fitness for a particular purpose. In no event shall OPC Foundation or its suppliers be liable for any damages whatsoever including direct, indirect, incidental, consequential, loss of business profits or special damages, even if OPC Foundation or its suppliers have been advised of the possibility of ...

## Publisher

- **Name:** OPC Foundation  
- **Category:** Vendor  
- **Namespace:** https://opcfoundation.org/security/csaf

## Vulnerability: CVE-2017-17443

### Title

LDS Crash via Invalid Configuration File Data

### Description

An attacker with access to the LDS configuration file can trigger a crash by placing invalid data into it. The LDS becomes unavailable until the file is repaired.

### Discovery Date

2017-12-06

### Acknowledgments

- **Reporter:** Kaspersky Labs  
- **Summary:** Identified and reported the issue.

### Threat

- **Category:** Impact  
- **Details:** Denial of Service (crash)

### Remediation

- **Category:** Vendor Fix  
- **Details:** Update LDS from version 1.03.370 to version 1.03.371.  
- **Date:** 2017-12-06  
- **Affected Product:** CSAFPID-01

### CVSS Score

- **Version:** 3.0  
- **Vector String:** `CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:N/A:H/E:F/RL:O/RC:C/CR:L/IR:L/AR:L/MAV:L/MAC:L/MPR:H/MUI:N/MS:U/MC:N/MI:N/MA:H`  
- **Base Score:** 4.4  
- **Base Severity:** Medium

## Affected Product

- **Product:** LDS version 1.03.370  
- **Product ID:** CSAFPID-01

## References

- [PDF version of the security bulletin](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2017-17443.pdf)
- [MITRE CVE record](http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-17443)
- [OPC LDS Product Info](https://opcfoundation.org/developer-tools/developer-kits-unified-architecture/local-discovery-server-lds/)