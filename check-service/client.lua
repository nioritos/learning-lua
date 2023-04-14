local inService = false;
local blip = 0;
local isPress = true;
local posicoes = {
    [1] = { ['x'] = 165.73254394531, ['y'] = -1031.6920166016, ['z'] = 29.312452316284 },
    [2] = { ['x'] = 247.42178344727, ['y'] = -978.24835205078, ['z'] = 29.380004882813 },
    [3] = { ['x'] = 241.40711975098, ['y'] = -848.56671142578, ['z'] = 29.879978179932},
    [4] = { ['x'] = 143.32273864746, ['y'] = -879.61926269531, ['z'] = 30.555179595947 }
}
local posicao_iniciar_servico = { 
    ['x'] = 148.78611755371, 
    ['y'] = -1031.1124267578, 
    ['z'] = 29.343803405762 
};

--seria adquirida pegando o player (getPlayerPerId) e acessando a propriedade coords (getEntityCoords(player)) dela.
local posicao_player = { 
    ['x'] = 138,
    ['y'] = -1020, 
    ['z'] = 19
};


--aqui seria uma thread function
function caldistance()
    local time = 1000; --tempo de espera para o loop se executar novamente, representado em "ms".
    local distance_service = posicao_iniciar_servico.x + posicao_iniciar_servico.y + posicao_iniciar_servico.z;
    local distance_player = posicao_player.x + posicao_player.y + posicao_player.z;
    local distance = distance_service - distance_player;
    print(distance)

    if distance <= 11 then
        time = 1; --tempo para não deixar o loop lento e "printar" o DrawMaker mais rápido (sem bugs, sem piscar.)
        print("perto do blip")
        print("o tempo de espera para o loop e de: "..time.."ms")
            if isPress then -- a variavel representa a tecla E que caso é apertada, executa este bloco de código, como o valor da varíavel está true, quer dizer que o E foi pressionado.
                inService = false
                print("perto do blip, mas entrou no trabalho (apertou a tecla E)") -- aqui ele iria acionar uma função drawText e ia printar literalmente na tela a mensagem que está no serviço, com suas outras props(tamanho, tipo de fonte, cor, transparência)
                workblips()

            else
                print("perto do blip, mas não está no trabalho")
            end
        else
        print("longe do blip")
    end
end

local pos = 1;

function workblips()
    local init = 0;

       while init <= 10 do
            if inService then
                local distance_player_work = posicao_player.x + posicao_player.y + posicao_player.z;
                local distance_blip = posicoes[pos].x + posicoes[pos].y + posicoes[pos].z;
                local distance = distance_blip - distance_player_work;
                print(distance.." linha 52")
            

                --aqui checa a distância para caso a distância for menor ou igual a 
                if distance then
                    pos = pos + 1
                else
                    print("está longe, tente chegar mais perto do blip.")
                end
                --aqui checa a distância para caso for verdadeiro (que no lugar teria que checar junto com a distância do usuário simultâneamente) bota o blip na próxima coordenada.

            else
                print(false)
                init = 10 -- aqui está setando para que o loop apenas execute uma vez, já que ele não esta em serviço, não será preciso setar um loop hiper-rápido.

            end
        init = init+1;
       end

end


caldistance()