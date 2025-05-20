# Security Advisory for CVE-2024-45526

**Tracking ID:** OPC-2024-10-15-45526  
**Version:** 1.0.0  
**Status:** Final  
**Initial Release Date:** 2024-10-15  
**Current Release Date:** 2024-10-15  

## Legal Disclaimer

The information provided in this disclosure is provided 'as is' without warranty of any kind. OPC Foundation disclaims all warranties, either express or implied, including the warranties of merchantability and fitness for a particular purpose. In no event shall OPC Foundation or its suppliers be liable for any damages whatsoever including direct, indirect, incidental, consequential, loss of business profits or special damages, even if OPC Foundation or its suppliers have been advised of the possibility o...

## Publisher

- **Name:** OPC Foundation  
- **Category:** Vendor  
- **Namespace:** https://opcfoundation.org/security/csaf

## Vulnerability: CVE-2024-45526

### Title

Performance degradation attack in OPC UA .NET Standard Stack

### Description

An unauthorized attacker can trigger a gradual degradation in performance.

### Discovery Date

2024-10-15

### CWE

- **ID:** CWE-770  
- **Name:** Allocation of Resources Without Limits or Throttling  
- [More Info](https://cwe.mitre.org/data/definitions/770.html)

### Acknowledgments

- **Reporter:** Florian Kohnhäuser  
- **Organization:** ABB  
- **Summary:** Reported the issue.

### Threat

- **Category:** Impact  
- **Details:** An unauthorized attacker can trigger a gradual degradation in performance.

### Remediation

- **Vendor Fix:**  
  - **Details:** Update to OPC UA .NET Standard Stack version 1.5.374.118 or later.  
  - [Patch version](https://github.com/OPCFoundation/UA-.NETStandard/releases/tag/1.5.374.118)

- **Workaround:**  
  - **Details:** Disable saving rejected certificates after authentication failure.

### CVSS Score

- **Version:** 3.1  
- **Vector String:** `CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L`  
- **Base Score:** 5.3  
- **Base Severity:** Medium

## Affected Product

- **Product:** OPC UA .NET Standard Stack < 1.5.374.118  
- **Product ID:** CSAFPID-01

## References

- [PDF version](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2024-45526.pdf)
- [CVE Record](https://www.cve.org/CVERecord?id=CVE-2024-45526)
- [Patch Version on GitHub](https://github.com/OPCFoundation/UA-.NETStandard/releases/tag/1.5.374.118)
- [CWE-770: Allocation of Resources Without Limits or Throttling](https://cwe.mitre.org/data/definitions/770.html)