#language: pt

Funcionalidade: Cadastro de ideia
Eu como um internauta, gostaria de utilizar o site casa criativa
para cadastrar minhas idéias de diversão durante este período de quarentena.

@new_ideia
Esquema do Cenario: Cadastrar uma nova ideia

Dado que acesse o site casa criativa
E clique no botao adicionar nova ideia
Quando preencho os campos com as informaçõs da idéia '<ideia>'
E clico no botao salvar
Então vejo a minha ideia cadastrada

Exemplos:

|ideia       | 
|karaoke     | 
|exercicio   |
