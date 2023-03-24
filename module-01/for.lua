
-- for loop é muito usado também para percorrer lista. pairs(lista) é onde ele pega a lista desejada e atribui seu indíce para a primeira variavel e o valor do indice para a segunda variavel

local lista = {
    [1] = "junin",
    [2] = "stonks",
    [3] = "lele",
    [4] = "rocha",
    [5] = "deni",
};

for indice,valor in pairs(lista) do
    print(valor, "valor")
    print(indice, "indice")
end