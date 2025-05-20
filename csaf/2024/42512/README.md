# Security Advisory for CVE-2024-42512

**Tracking ID:** OPC-2025-02-09T00:00:00Z  
**Version:** 1.0.0  
**Status:** Final  
**Initial Release Date:** 2025-02-09  
**Current Release Date:** 2025-02-09  

## Legal Disclaimer

The information provided in this disclosure is provided 'as is' without warranty of any kind. OPC Foundation disclaims all warranties, either express or implied, including the warranties of merchantability and fitness for a particular purpose. In no event shall OPC Foundation or its suppliers be liable for any damages whatsoever including direct, indirect, incidental, consequential, loss of business profits or special damages, even if OPC Foundation or its suppliers have been advised of the possibility o...

## Publisher

- **Name:** OPC Foundation  
- **Category:** Vendor  
- **Namespace:** https://opcfoundation.org/security/csaf

## Vulnerability: CVE-2024-42512

### Title

Bypass of application authentication via Basic128Rsa15 in OPC UA .NET Standard Stack

### Description

An unauthorized attacker can bypass application authentication when Basic128Rsa15 is enabled. Most users are unaffected as it is disabled by default.

### Discovery Date

2025-02-09

### CWE

- **ID:** CWE-208  
- **Name:** Observable Timing Discrepancy  
- [More Info](https://cwe.mitre.org/data/definitions/208.html)

### Acknowledgments

- **Reporter:** Tom Tervoort  
- **Organization:** Secura B.V.  
- **Summary:** Reported the issue.

### Threat

- **Category:** Impact  
- **Details:** Unauthorized attacker can bypass application authentication when Basic128Rsa15 is enabled.

### Remediation

- **Vendor Fix:**  
  - **Details:** Update to OPC UA .NET Standard Stack version 1.5.374.158 or later.  
  - [Patch version](https://github.com/OPCFoundation/UA-.NETStandard/tree/1.5.374.158)

- **Workaround:**  
  - **Details:** Disable the Basic128Rsa15 security policy.

### CVSS Score

- **Version:** 3.1  
- **Vector String:** `CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N`  
- **Base Score:** 5.9  
- **Base Severity:** Medium

## Affected Product

- **Product:** OPC UA .NET Standard Stack < 1.5.374.158  
- **Product ID:** CSAFPID-01

## References

- [PDF version](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2024-42512.pdf)
- [CVE Record](https://www.cve.org/CVERecord?id=CVE-2024-42512)
- [Patch Version on GitHub](https://github.com/OPCFoundation/UA-.NETStandard/tree/1.5.374.158)
- [CWE-208: Observable Timing Discrepancy](https://cwe.mitre.org/data/definitions/208.html)