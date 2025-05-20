# Security Update for OPC UA .NET Sample Applications

**Publisher**: OPC Foundation  
**Category**: `security_advisory`  
**CSAF Version**: 2.0  
**Tracking ID**: OPC-2017-12070  
**Status**: Final  
**Version**: 1.0  
**Initial Release Date**: 2017-07-31  
**Current Release Date**: 2017-07-31  

## Revision History

- **1.0** (2017-07-31): Bulletin published

---

## Vulnerability: CVE-2017-12070

**Title**: Unsigned DLLs in OPC UA .NET Sample Applications Allow Arbitrary Code Execution  

### Description

Unsigned versions of the DLLs distributed by the OPC Foundation may be replaced with malicious code.

### Threats

- **Impact**: Arbitrary code execution through unsigned DLL replacement  
- **Affected Product**: UA-.NET version 1.02.336.0

### CVSS Score

- **Base Score**: 4.9 (Medium)  
- **Vector**: `CVSS:3.0/AV:L/AC:H/PR:H/UI:R/S:U/C:L/I:H/A:H/E:U/RL:O/RC:R/CR:L/IR:L/AR:L/MAV:L/MAC:H/MPR:H/MUI:R/MS:U/MC:N/MI:H/MA:H`  
- **Version**: 3.0

### Discovery & Release Dates

- **Discovery Date**: 2017-07-31  
- **Release Date**: 2017-07-31

### Acknowledgments

- **Reporter**: US Department of Homeland Security  
- **Organization**: US DHS

### References

- [PDF version](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2017-12070.pdf)  
- [CVE Record](https://www.cve.org/CVERecord?id=CVE-2017-12070)  
- [Source Code](https://github.com/OPCFoundation/UA-.NET)

### Remediation

- **Fix**: OPC Foundation no longer provides pre-built binaries. Vendors should rebuild from signed source code.  
- **Affected Version**: UA-.NET version 1.02.336.0

---

## Affected Products

- **Product Family**: .NET Stack and Sample Applications  
  - UA-.NET version 1.02.336.0
