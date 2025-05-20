# Security Update for Local Discovery Services (LDS)

**Publisher**: OPC Foundation  
**Category**: `security_advisory`  
**CSAF Version**: 2.0  
**Tracking ID**: OPC-2017-11672  
**Status**: Final  
**Version**: 1.0  
**Initial Release Date**: 2017-07-28  
**Current Release Date**: 2017-07-28  

## Revision History

- **1.0** (2017-07-28): Bulletin published

---

## Vulnerability: CVE-2017-11672

**Alternate ID**: GCVE-105-2017-12069  
**Title**: Unquoted Service Path in LDS Allows Unauthorized Executable Execution  

### Description

The Local Discovery Server (LDS) is installed with an unquoted service path. This could allow the execution of unauthorized executables on the target machine.

### Threats

- **Impact**: Execution of unauthorized executables  
- **Affected Products**: LDS version 1.02.335.1, 1.03.348, 1.03.355, 1.03.362

### CVSS Score

- **Base Score**: 4.4 (Medium)  
- **Vector**: `CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:N/A:H/E:F/RL:O/RC:C/CR:L/IR:M/AR:M/MAV:L/MAC:L/MPR:H/MUI:N/MS:U/MC:N/MI:N/MA:H`  
- **Version**: 3.0

### Weakness

- CWE not explicitly listed, but implied via unquoted path vulnerability.

### Discovery & Release Dates

- **Discovery Date**: 2017-07-28  
- **Release Date**: 2017-07-28

### Acknowledgments

- **Reported by**: Members of the OPC community  
- **Organization**: OPC Foundation

### References

- [MITRE CVE Entry](https://www.cve.org/CVERecord?id=CVE-2017-11672)  
- [OPC LDS Info](https://opcfoundation.org/developer-tools/developer-kits-unified-architecture/local-discovery-server-lds/)  
- [PDF](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2017-11672.pdf)

### Remediation

- **Fix**: Update LDS to version 1.03.367 or later  
- **Affected Versions**: LDS version 1.02.335.1, 1.03.348, 1.03.355, 1.03.362

---

## Affected Products

- **Product Family**: Local Discovery Server  
  - LDS version 1.02.335.1  
  - LDS version 1.03.348  
  - LDS version 1.03.355  
  - LDS version 1.03.362
