# Security Update for the OPC UA .NET Standard Stack

**Publisher**: OPC Foundation  
**Category**: `security_advisory`  
**CSAF Version**: 2.0  
**Tracking ID**: OPC-2025-02-01-001  
**Status**: Final  
**Version**: 1.0  
**Initial Release Date**: 2025-02-01  
**Current Release Date**: 2025-02-01  

## Revision History

- **1.0** (2025-02-01): Bulletin published

---

## Vulnerability: GCVE-105-2025-001

**Title**: Connection exhaustion via improper shutdown in OPC UA .NET Standard Stack  

### Summary

An unauthorized attacker can consume all available connections by exploiting improper resource shutdown.

### Threats

- **Impact**: Denial of service via resource exhaustion

### CVSS Score

- **Base Score**: 8.7 (High)  
- **Vector**: `CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N`  
- **Version**: 4.0

### Weakness

- **CWE-703**: Improper Resource Shutdown or Release  
  [Reference](https://cwe.mitre.org/data/definitions/703.html)

### Discovery Date

- **2025-02-01**

### Acknowledgments

- **Reporter**: Rikard Hansson  
- **Organization**: ABB

### Remediation

- **Fix**: Update to OPC UA .NET Standard Stack version 1.5.374.118 or later  
- [Patch Release](https://github.com/OPCFoundation/UA-.NETStandard/releases/tag/1.5.374.118)

### Involvement

- **Vendor Status**: Fixed

---

## References

- [Bulletin Source on GitHub](https://github.com/OPCFoundation/SecurityBulletins/tree/master/2025/001)  
- [Patch Release](https://github.com/OPCFoundation/UA-.NETStandard/releases/tag/1.5.374.118)

---

## Affected Product

- **Product Name**: OPC UA .NET Standard Stack  
- **Product ID**: UA-.NETStandard  
- **Generic Name**: UA-.NETStandard  
- **Affected Version**: less than 1.5.374.118
