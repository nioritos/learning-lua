
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

#### isso está sendo documentado apenas para melhorar meu aprendiza e tentar facilitar o aprendizado de outra pessoa que tentar aprender lua e gerenciamento FIVEm. Caso falte algum detalhe, arquivo, explicação, ou houver algo para melhorar, faça um pull request com o que deseja e documente o objetivo deste pull request.