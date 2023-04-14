-- importando do Citzen, isso ficaria rodando em uma Thread Function, ficaria rodando (sempre verificando em paralelo com outros processos)


--Lugares para o drawMaker ser aplicado
local lugares = {
    [1] = { ['x'] = 1, ['y'] = 1, ['z'] = 1},
    [2] = { ['x'] = 2, ['y'] = 2, ['z'] = 2},
@@ -9,10 +9,14 @@ local lugares = {
    [5] = { ['x'] = 5, ['y'] = 5, ['z'] = 5},
};

--player e sua propriedade de coords (coordernadas)

local player = {
    ['coords'] = 1,
};

--estrutura de repetição para checar caso a cordernada do player for maior ou igual a coordernada do 1° drawMaker, ele cria o drawMaker em outro local.

for i,v in pairs(lugares) do
    print('coordernadas do player inicial inicial: '..player.coords)
    print('drawMaker inicial: '..i)
    player.coords = player.coords + 1
    if player.coords >= v.x then
        i = i + 1
        print('passando para outro drawMaker: '..v.x)
        print()
    else
        player.coords = player.coords + 1
        print('precisa se andar mais')
    end
end