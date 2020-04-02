%dw 2.0
output application/json
---
Mule::lookup('print-employee', payload)