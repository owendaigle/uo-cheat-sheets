| | id | num | call | compute | + | - | ; | : | , | = | ( | ) | { | } | 
| - | - | - | - | - | - | - | - | - | - | - | - | - | - | - |
| program | - | - | - | - | - | - | - | - | - | - | - | - | \<program> -> {<statement_list>} | - |
| statement_list | - | - |  \<statement_list> -> \<statement>;\<statement_list'> | \<statement_list> -> \<statement>;\<statement_list'> | - | - | - | - | - | - | - | - | - | - |
| statement_list' | - | - | \<statement_list'> -> <statement_list> | \<statement_list'> -> \<statement_list> | - | - | - | - | - | - | - | - | - | \<statement_list'> -> ϵ |
| statement | - | - | \<statement> -> call: \<procedure_call> | \<statement> -> compute: \<expression> | - | - | - | - | - | - | - | - | - | - |
| procedure_call | \<procedure_call> -> id(\<parameters>) | - | - | - | - | - | - | - | - | - | - | - | - | - |
| parameters | \<parameters> -> \<factor>\<parameters'> | \<parameters> -> \<factor>\<parameters'> | - | - | - | - | - | - | - | - | - | - | - | - |
| parameters' | - | - | - | - | - | - | - | - | \<parameters'> -> ,\<parameters> | - | \<parameters'> -> ϵ | - | - | - |
| expression | \<expression> -> id=\<factor><expression'> | - | - | - | - | - | - | - | - | - | - | - | - | - |
| expression' | - | - | - | - | \<expression'> -> +\<factor> | \<expression'> -> +\<factor> | \<expression'> -> ϵ | - | - | - | - | - | - | - |
| factor | \<factor> -> id | \<factor> -> num | - | - | - | - | - | - | - | - | - | - | - | - |