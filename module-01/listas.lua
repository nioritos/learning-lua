-- listas / arrays é um objeto, porém com índeces/varíaveis sendo apenas números, que seu valor, será um objeto.

local array = {
    [1] = {
        ["carro"] = "fiat uno",
        ["celular"] = "iphone 14 pro"
    },
    [2] = {
        ["carro"] = "hb20",
        ["celular"] = "pocket"
    },
    [3] = {
        ["status"] = "rico",
        ["carro"] = "corvet",
        ["celular"] = "iphone 14 pro"
    },
    [4] = "fodido"
}

print(array[1].carro, "o carro do pobre que se paga de rico, que esta dentro de um objeto no indice/variavel 1")

print("------------------------------------------------------------------------")
    
print(array[4], "status de quem paga de pobre")
