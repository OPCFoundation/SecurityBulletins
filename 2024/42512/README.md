# Security Advisory for CVE-2024-42512

**Publisher**: OPC Foundation  
**Category**: `security_advisory`  
**CSAF Version**: 2.0  
**Tracking ID**: OPC-2025-02-09  
**Status**: Final  
**Version**: 1.0  
**Initial Release Date**: 2025-02-09  
**Current Release Date**: 2025-02-09  

## Revision History

- **1.0** (2025-02-09): Bulletin published

---

## Vulnerability: CVE-2024-42512

**Alternate ID**: GCVE-105-2024-42512  
**Title**: Bypass of application authentication via Basic128Rsa15 in OPC UA .NET Standard Stack  
**Summary**: PDF version

### Threats

- **Impact**: Unauthorized attacker can bypass application authentication when Basic128Rsa15 is enabled. Most users unaffected as it is disabled by default.

### CVSS Score

- **Base Score**: 5.9 (Medium)  
- **Vector**: `CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N`  
- **Version**: 3.1

### Weakness

- **CWE-208**: Observable Timing Discrepancy  
  [CWE Reference](https://cwe.mitre.org/data/definitions/208.html)

### Discovery Date

- **2025-02-09**

### Acknowledgments

- **Reporter**: Tom Tervoort  
- **Organization**: Secura B.V.

### References

- [PDF version](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2024-42512.pdf)
- [CVE Record](https://www.cve.org/CVERecord?id=CVE-2024-42512)
- [Patch Version](https://github.com/OPCFoundation/UA-.NETStandard/tree/1.5.374.158)

### Remediation

- **Type**: Vendor Fix  
- **Details**: Update to OPC UA .NET Standard Stack version 1.5.374.158 or later  
- **URL**: [Patch](https://github.com/OPCFoundation/UA-.NETStandard/tree/1.5.374.158)

### Workarounds

- Disable the Basic128Rsa15 security policy.

### Involvement

- **Vendor Status**: Fixed

---

## Affected Product

- **Product Name**: OPC UA .NET Standard Stack  
- **Product ID**: UA-.NETStandard  
- **Generic Name**: UA-.NETStandard  
- **Affected Version**: less than 1.5.374.158
