-- -- while é uma estrutura de repetição, ENQUANTO seu parâmetro for verdadeiro, ele executa seu bloco de código.

local i = 1

while i < 10 do
    i = i + 1
    print(i)

end

print("aqui esta 'mostrando' o seguinte: enquanto o valor de i for menor que 10, reatribua o valor de i seu valor + 1")

-- podemos usar este loop para percorrer nossa lista.

print("--------------------------------------------")

local lista = {
    [1] = "junin",
    [2] = "stonks",
    [3] = "lele",
    [4] = "rocha",
    [5] = "deni",
};

while i < #lista do
    print(lista[i])
    i = i + 1
end