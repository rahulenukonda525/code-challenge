%dw 2.0
import java!caseUtils::TextUtils
output application/java
---
TextUtils::toCamelCase(payload)