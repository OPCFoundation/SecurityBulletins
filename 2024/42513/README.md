# Security Advisory for CVE-2024-42513

**Tracking ID:** OPC-2025-02-09-42513  
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

## Vulnerability: CVE-2024-42513

### Title

Authentication bypass via HTTPS in OPC UA .NET Standard Stack

### Description

An unauthorized attacker can bypass application authentication using HTTPS endpoints with security policies other than 'None'.

### Discovery Date

2025-02-09

### CWE

- **ID:** CWE-305  
- **Name:** Authentication Bypass by Primary Weakness  
- [More Info](https://cwe.mitre.org/data/definitions/305.html)

### Acknowledgments

- **Reporter:** Tom Tervoort  
- **Organization:** Secura B.V.  
- **Summary:** Reported the issue.

### Threat

- **Category:** Impact  
- **Details:** An unauthorized attacker can bypass application authentication using HTTPS endpoints with security policies other than 'None'.

### Remediation

- **Vendor Fix:**  
  - **Details:** Update to OPC UA .NET Standard Stack version 1.5.374.158 or later.  
  - [Patch version](https://github.com/OPCFoundation/UA-.NETStandard/tree/1.5.374.158)

- **Workaround:**  
  - **Details:** Disable all HTTPS endpoints or configure them to use the 'None' security policy. Ensure HTTPS client certificates are used if application authentication is required.

### CVSS Score

- **Version:** 3.1  
- **Vector String:** `CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:L/A:N`  
- **Base Score:** 6.5  
- **Base Severity:** Medium

## Affected Product

- **Product:** OPC UA .NET Standard Stack < 1.5.374.158  
- **Product ID:** CSAFPID-01

## References

- [PDF version](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2024-42513.pdf)
- [CVE Record](https://www.cve.org/CVERecord?id=CVE-2024-42513)
- [Patch Version on GitHub](https://github.com/OPCFoundation/UA-.NETStandard/tree/1.5.374.158)
- [CWE-305: Authentication Bypass by Primary Weakness](https://cwe.mitre.org/data/definitions/305.html)