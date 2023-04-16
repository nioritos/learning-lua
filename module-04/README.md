
# Requests & Responses VRP/Server/Client

 Quando o client faz uma chamada/requisição para o servidor, para o servidor identificar qual cliente dentre vários existentes, ele faz um *source* (criada automáticamente a cada requisição), que nada mas é um caminho para redirecionar as informações específicas para o client específico.
 Quando usamos a propriedade *source *-1**, ele invés de apenas redirecionar um response/resposta (resposta do servidor da requisição feita pelo cliente) para um client, eles redireciona para *todos* os clients presentes no servidor/cidade.

## Informações que precisam ser salvas no banco por jogador:

 - Vida;
 - Posição;
 - Fome;
 - Água;
 - Stress;

## Informações que precisam ser salvas e respondidas pelo servidor:
 - N°s de players off e online;
 - N°s de carros;
 - N°s de polícias;
 - N°s de enfermeiros e médicos;

Para esse tipo de loop com sincronismo (chamada e resposta (request e response) com um baixo tempo de resposta (ms)), precisamos tomar muito cuidado, pois pode travar e fazer cair o servidor.

## Tunnel

Tunnel é a forma em que podemos importar funções, utilites, do client para o server ou vice-versa.
Através do VRP (Framework "base"), podemos fazer este tunelamento, cada vez que um client fizer uma requisição para o servidor e para cada resposta que um servidor fizer para um client.

## Como fazemos este tunelamento?

Simples, basta importamos o Tunnel:
  local Tunnel = module("lib/tools"); Importando a ferramenta Tunnel da ferramenta/biblioteca "pai": Tools;
  vRPclient = Tunnel.getInterface("vRP");

Agora vamos supor que queremos importar uma função de verificar caso o id de um usuário for igual a x, dar cargo de adm:
    function verifyFields(user_id)

        if user_id == 1 then
            // função para dar o cargo de adm
        else
            // função para prosseguir normal já que o id do usuário não é igual de um adm.
        end
    end

Agora para importamos para o client (para ser executado no client), vamos fazer o seguinte:

Tunnel.bindInterface("nome", função, variavel/valor que quer importar para o client); Exemplo:
    Tunnel.bindInterface("verifyUserId", verifyFields());

## Como resgatar/importar para o client?

Simples, apenas importe as Configurações do Tunnel e faça uma variavel com o valor que deseja, exemplo:
    Tunnel da ferramenta/biblioteca "pai": Tools;
    vRPclient = Tunnel.getInterface("vRP");
    local verifyUserId = Tunnel.getInterface("verifyUserId");

Mas pode estar se perguntado:
 - Ok, mas como irei saber qual client específico está fazendo esta requisão e como redirecionar a resposta para este cliente específico?;
Respondendo esta pergunta: Utilizando uma das váriaveis globais (source).

## Source

A source é criada (com o endereço do client específico) globalmente a cada requisição que um client fizer, para utizarmos ela, basta apenas guarda-la em uma varíavel (por boas praticas, é recomendada ser chamada também de source), ficaria mais ou menos assim:
 local source = source;
 

#### isso está sendo documentado apenas para melhorar meu aprendiza e tentar facilitar o aprendizado de outra pessoa que tentar aprender lua e gerenciamento FIVEm. Caso falte algum detalhe, arquivo, explicação, ou houver algo para melhorar, faça um pull request com o que deseja e documente o objetivo deste pull request.