-- um teste lógico é composto por uma estrutura de if e else (se / se não), os argumentos de um teste lógico será executado APENAS se o parâmetro do if for verdadeiro, se não for, será executado no else.

local password = "segurança321";
local db_password = "segurançaMáxima"


if password == db_password then
    print(true, "true pois o valor de password e igual o valor de db_password")
else
    print(false, "false pois o valor de password nao e igual o valor de db_password")
end

print("-----------------------------------------------")


if password == password then 
    print(true, "true pois o valor de password e igual o valor de password")
else
    print(false, "false pois o valor de password nao e igual o valor de password")
end