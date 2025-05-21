# Security Update for the OPC UA .NET Standard Stack

|||
|---|---|
|**Publication Date**|2025-01-31|
|**Version**|1.0.0|
|**Status**|final|
|**Distribution**|[WHITE](https://www.first.org/tlp/)|
|**Publisher**|OPC Foundation|
|**Publisher Type**|vendor|
|**Namespace**|[https://opcfoundation.org/security/csaf](https://opcfoundation.org/security/csaf)|

## Affected Products

- OPC UA .NET Standard Stack <1.5.374.11

## Vulnerabilities
### GCVE-105-2025-001
Connection exhaustion via improper shutdown in OPC UA .NET Standard Stack  

### Summary
An unauthorized attacker can consume all available connections by exploiting improper resource shutdown.  

CWE-404 Improper Resource Shutdown or Release  

### Threats
- Denial of service via resource exhaustion.

### CVSS Score
**Base Score:** <span style='color:red'>7.5 (HIGH)</span>  
**Vector:**: [CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H](https://www.first.org/cvss/calculator/3-1#CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)  

### Remediations
**Vendor Fix** ([link](https://github.com/OPCFoundation/UA-.NETStandard/releases/tag/1.5.374.118))  
Update to OPC UA .NET Standard Stack version 1.5.374.118 or later.  
  
**Mitigation**  
The attacker has to have the ability to spoof IP packets and needs access to the private key of the client.  
  
  
**Workaround**  
Do not use sign-only; always enable encryption.  
  

### Acknowledgments
- Rikard Hansson of ABB for discovering the issue.

##  References

[Advisory Source](https://github.com/OPCFoundation/OPC-SecurityAdvisories/tree/latest/csaf/2025/001)  
[CWE-703: Improper Resource Shutdown or Release](https://cwe.mitre.org/data/definitions/703.html)  

##  Legal Disclaimer

The information provided in this disclosure is provided 'as is' without warranty of any kind. OPC Foundation disclaims all warranties, either express or implied, including the warranties of merchantability and fitness for a particular purpose. In no event shall OPC Foundation or its suppliers be liable for any damages whatsoever including direct, indirect, incidental, consequential, loss of business profits or special damages, even if OPC Foundation or its suppliers have been advised of the possibility of such damages. Some states do not allow the exclusion or limitation of liability for consequential or incidental damages so the foregoing limitation may not apply
