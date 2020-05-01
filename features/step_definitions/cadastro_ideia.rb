Dado("que acesse o site casa criativa") do
  @ideia_page.go
end

Dado("clique no botao adicionar nova ideia") do
  @ideia_page.clicar_adicionar
end

Quando("preencho os campos com as informaçõs da idéia {string}") do |diversao_code|

  file = YAML.load_file(File.join(Dir.pwd, "features/support/data/hmg.yml"))
  @diversao = file[diversao_code]

  @ideia_page.preencher_titulo(@diversao['titulo'])
  @ideia_page.preencher_categoria(@diversao['categoria'])
  @ideia_page.preencher_linkimagem(@diversao['linkImagem'])
  @ideia_page.preencher_descricao(@diversao['descricao'])
  @ideia_page.preencher_linkideia(@diversao['linkideia'])
end

Quando("clico no botao salvar") do
   @ideia_page.clicar_salvar
end

Então("vejo a minha ideia cadastrada") do
    expect(page).to have_content('Karaoke')
end