# Security Update for the OPC UA .NET Standard Stack

**Tracking ID:** OPC-2025-02-01-001  
**Version:** 1.0.0  
**Status:** Final  
**Initial Release Date:** 2025-02-01  
**Current Release Date:** 2025-02-01  

## Legal Disclaimer

The information provided in this disclosure is provided 'as is' without warranty of any kind. OPC Foundation disclaims all warranties, either express or implied, including the warranties of merchantability and fitness for a particular purpose. In no event shall OPC Foundation or its suppliers be liable for any damages whatsoever including direct, indirect, incidental, consequential, loss of business profits or special damages, even if OPC Foundation or its suppliers have been advised of the possibility o...

## TLP Label

- **TLP:** WHITE

## Publisher

- **Name:** OPC Foundation  
- **Category:** Vendor  
- **Namespace:** https://opcfoundation.org/security/csaf

## Vulnerability: GCVE-105-2025-001

### Title

Connection exhaustion via improper shutdown in OPC UA .NET Standard Stack

### Description

An unauthorized attacker can consume all available connections by exploiting improper resource shutdown.

### Discovery Date

2025-02-01

### CWE

- **ID:** CWE-404  
- **Name:** Improper Resource Shutdown or Release  
- [More Info](https://cwe.mitre.org/data/definitions/703.html)

### Acknowledgments

- **Reporter:** Rikard Hansson  
- **Organization:** ABB  
- **Summary:** Reported the issue.

### Threat

- **Category:** Impact  
- **Details:** Denial of service via resource exhaustion.

### Remediation

- **Vendor Fix:**  
  - **Details:** Update to OPC UA .NET Standard Stack version 1.5.374.118 or later.  
  - [Patch version](https://github.com/OPCFoundation/UA-.NETStandard/releases/tag/1.5.374.118)

### CVSS Score

- **Version:** 3.1  
- **Vector String:** `CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H`  
- **Base Score:** 7.5  
- **Base Severity:** High

## Affected Product

- **Product:** OPC UA .NET Standard Stack < 1.5.374.11  
- **Product ID:** CSAFPID-01

## References

- [Bulletin Source](https://github.com/OPCFoundation/SecurityAdvisories/tree/master/2025/001)
- [Patch Version on GitHub](https://github.com/OPCFoundation/UA-.NETStandard/releases/tag/1.5.374.118)
- [CWE-703: Improper Resource Shutdown or Release](https://cwe.mitre.org/data/definitions/703.html)