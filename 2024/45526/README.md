# Security Advisory for CVE-2024-45526

**Publisher**: OPC Foundation  
**Category**: `security_advisory`  
**CSAF Version**: 2.0  
**Tracking ID**: OPC-2024-10-15-45526  
**Status**: Final  
**Version**: 1.0  
**Initial Release Date**: 2024-10-15  
**Current Release Date**: 2024-10-15  

## Revision History

- **1.0** (2024-10-15): Bulletin published

---

## Vulnerability: CVE-2024-45526

**Alternate ID**: GCVE-105-2024-45526  
**Title**: Performance degradation attack in OPC UA .NET Standard Stack  
**Summary**: PDF version

### Threats

- **Impact**: An unauthorized attacker can trigger a gradual degradation in performance.

### CVSS Score

- **Base Score**: 5.3 (Medium)  
- **Vector**: `CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L`  
- **Version**: 3.1

### Weakness

- **CWE-770**: Allocation of Resources Without Limits or Throttling  
  [CWE Reference](https://cwe.mitre.org/data/definitions/770.html)

### Discovery Date

- **2024-10-15**

### Acknowledgments

- **Reporter**: Florian Kohnhäuser  
- **Organization**: ABB

### References

- [PDF version](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2024-45526.pdf)
- [CVE Record](https://www.cve.org/CVERecord?id=CVE-2024-45526)
- [Patch Version](https://github.com/OPCFoundation/UA-.NETStandard/releases/tag/1.5.374.118)

### Remediation

- **Type**: Vendor Fix  
- **Details**: Update to OPC UA .NET Standard Stack version 1.5.374.118 or later  
- **URL**: [Patch](https://github.com/OPCFoundation/UA-.NETStandard/releases/tag/1.5.374.118)

### Workarounds

- Disable saving rejected certificates after authentication failure.

### Involvement

- **Vendor Status**: Fixed

---

## Affected Product

- **Product Name**: OPC UA .NET Standard Stack  
- **Product ID**: UA-.NETStandard  
- **Generic Name**: UA-.NETStandard  
- **Affected Version**: less than 1.5.374.118
