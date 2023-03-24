-- EM objetos, representamos ele entre {}, junto com o nome entre [] e seu valor.

local personal = {
    ['altura'] = '173cm',
    ['peso'] = '84kg',
    [7] = 700,
    [0] = {
        ['profissão'] = 'programador'
    }
}

-- para acessar um valor dentro de um objeto, cujo o nome de um valor é uma string, podemos fazer das duas maneiras:

personal.altura
-- ou
personal['altura']

-- para acessar um valor dentro de um objeto, cujo o nome de um valor é um number, podemos fazer apenas da seguinte maneira:

personal[7]


-- podemos também acessar um objeto dentro de um objeto:

personal[0].profissão