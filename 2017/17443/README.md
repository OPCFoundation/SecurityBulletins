# Security Update for the Local Discovery Server (LDS)

**Publisher**: OPC Foundation  
**Category**: `security_advisory`  
**CSAF Version**: 2.0  
**Tracking ID**: OPC-2017-12-06-17443  
**Status**: Final  
**Version**: 1.0  
**Initial Release Date**: 2017-12-06  
**Current Release Date**: 2017-12-06  

## Revision History

- **1.0** (2017-12-06): Bulletin published

---

## Vulnerability: CVE-2017-17443

**Title**: LDS Crash via Invalid Configuration File Data  

### Description

An attacker with access to the LDS configuration file can trigger a crash by placing invalid data into it. The LDS becomes unavailable until the file is repaired.

### Threats

- **Impact**: Denial of Service (crash)

### CVSS Score

- **Base Score**: 4.4 (Medium)  
- **Vector**: `CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:N/A:H/E:F/RL:O/RC:C/CR:L/IR:L/AR:L/MAV:L/MAC:L/MPR:H/MUI:N/MS:U/MC:N/MI:N/MA:H`  
- **Version**: 3.0

### Discovery Date

- **2017-12-06**

### Acknowledgments

- **Reporter**: Kaspersky Labs

### References

- [PDF version](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2017-17443.pdf)  
- [MITRE CVE Record](http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-17443)  
- [OPC LDS Product Info](https://opcfoundation.org/developer-tools/developer-kits-unified-architecture/local-discovery-server-lds/)

### Remediation

- **Fix**: Update LDS from version 1.03.370 to version 1.03.371  
- **Affected Product ID**: LDS-1.03.370

### Involvement

- **Vendor Status**: Fixed

---

## Affected Product

- **Product Name**: Local Discovery Server (LDS)  
- **Product ID**: LDS-1.03.370  
- **Generic Name**: LDS
