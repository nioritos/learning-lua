-- importando do Citzen, isso ficaria rodando em uma Thread Function, ficaria rodando (sempre verificando em paralelo com outros processos)


local lugares = {
    [1] = { ['x'] = 1, ['y'] = 1, ['z'] = 1},
    [2] = { ['x'] = 2, ['y'] = 2, ['z'] = 2},
    [3] = { ['x'] = 3, ['y'] = 3, ['z'] = 3},
    [4] = { ['x'] = 4, ['y'] = 4, ['z'] = 4},
    [5] = { ['x'] = 5, ['y'] = 5, ['z'] = 5},
};

local player = {
    ['coords'] = 1,
};

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
