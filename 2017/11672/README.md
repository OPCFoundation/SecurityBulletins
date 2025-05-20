
# Security Update for Local Discovery Services (LDS)

**Tracking ID**: OPC-2017-11672  
**CVE**: CVE-2017-11672  
**GCVE ID**: GCVE-105-2017-12069  
**Version**: 1.0.0  
**Release Date**: 2017-07-28  
**Status**: Final

## Description

**Title**: Unquoted Service Path in LDS Allows Unauthorized Executable Execution  
**Summary**: The Local Discovery Server (LDS) is installed with an unquoted service path. This could allow the execution of unauthorized executables on the target machine.

## Legal Disclaimer

The information provided in this disclosure is provided 'as is' without warranty of any kind. OPC Foundation disclaims all warranties, either express or implied, including the warranties of merchantability and fitness for a particular purpose. In no event shall OPC Foundation or its suppliers be liable for any damages whatsoever including direct, indirect, incidental, consequential, loss of business profits or special damages, even if OPC Foundation or its suppliers have been advised of the possibility of such damages. Some states do not allow the exclusion or limitation of liability for consequential or incidental damages so the foregoing limitation may not apply.

## Acknowledgments

- Members of the OPC community, OPC Foundation — Recognition for reporting the vulnerability.

## Affected Products

- OPC UA Local Discovery Server 1.02.335.1
- OPC UA Local Discovery Server 1.03.348
- OPC UA Local Discovery Server 1.03.355
- OPC UA Local Discovery Server 1.03.362

## Remediation

- **Fix Available**: Update LDS to version 1.03.367 or later (as of 2017-07-28)

## Threats

- **Impact**: Execution of unauthorized executables

## CVSS v3.0 Score

- **Base Score**: 4.4 (MEDIUM)
- **Vector**: CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:N/A:H/E:F/RL:O/RC:C/CR:L/IR:M/AR:M/MAV:L/MAC:L/MPR:H/MUI:N/MS:U/MC:N/MI:N/MA:H

## References

- [MITRE CVE Entry](https://www.cve.org/CVERecord?id=CVE-2017-11672)
- [OPC LDS Info](https://opcfoundation.org/developer-tools/developer-kits-unified-architecture/local-discovery-server-lds/)
- [PDF Version](https://files.opcfoundation.org/SecurityBulletins/OPC%20Foundation%20Security%20Bulletin%20CVE-2017-11672.pdf)
