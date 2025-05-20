
# Security Update for the OPC UA .NET Standard Stack

**Tracking ID:** OPC-2025-02-01-001  
**Version:** 1.0.0  
**Status:** Final  
**Initial Release Date:** 2025-02-01  
**Current Release Date:** 2025-02-01  
**Revision History:**
- **2025-02-01 (v1.0.0):** Advisory published

## Publisher Information

- **Name:** OPC Foundation  
- **Category:** Vendor  
- **Namespace:** [https://opcfoundation.org/security/](https://opcfoundation.org/security/)

## Document Classification

- **Category:** OPC Security Advisory  
- **CSAF Version:** 2.0  
- **TLP Label:** WHITE

## Product Tree

- **Product:** OPC UA .NET Standard Stack < 1.5.374.11  
  **Product ID:** UA-.NETStandard

## Vulnerability Details

### Title

**Connection exhaustion via improper shutdown in OPC UA .NET Standard Stack**

### Vulnerability ID

- **GCVE ID:** GCVE-105-2025-001  
- **CWE ID:** [CWE-404: Improper Resource Shutdown or Release](https://cwe.mitre.org/data/definitions/703.html)

### Summary

An unauthorized attacker can consume all available connections by exploiting improper resource shutdown.

### Threats

- **Impact:** Denial of service via resource exhaustion.

### Scores

- **CVSS v3.1 Vector:** `CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H`  
- **Base Score:** 7.5  
- **Severity:** HIGH  
- **Version:** 3.1

### Discovery

- **Discovery Date:** 2025-02-01  
- **Acknowledgment:** Reported by Rikard Hansson (ABB)

### Involvement

- **Vendor Status:** Completed

### Remediation

- **Type:** Vendor Fix  
- **Details:** Update to OPC UA .NET Standard Stack version 1.5.374.118 or later.  
- **URL:** [Release 1.5.374.118](https://github.com/OPCFoundation/UA-.NETStandard/releases/tag/1.5.374.118)

## References

- [Bulletin Source](https://github.com/OPCFoundation/SecurityAdvisories/tree/master/2025/001)
- [Patch](https://github.com/OPCFoundation/UA-.NETStandard/releases/tag/1.5.374.118)
- [CWE-703: Improper Resource Shutdown or Release](https://cwe.mitre.org/data/definitions/703.html)

## Legal Disclaimer

The information provided in this disclosure is provided 'as is' without warranty of any kind. OPC Foundation disclaims all warranties, either express or implied, including the warranties of merchantability and fitness for a particular purpose. In no event shall OPC Foundation or its suppliers be liable for any damages whatsoever including direct, indirect, incidental, consequential, loss of business profits or special damages, even if OPC Foundation or its suppliers have been advised of the possibility of such damages. Some states do not allow the exclusion or limitation of liability for consequential or incidental damages so the foregoing limitation may not apply.
