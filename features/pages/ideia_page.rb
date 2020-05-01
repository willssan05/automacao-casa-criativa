class Ideia < SitePrism::Page
    
    set_url ''

    element :btnadicionar, '#btnadicionar'
    element :titulo, 'input[name=title]'
    element :categoria, 'input[name=category]'
    element :linkimagem, 'input[name=image]'
    element :descricao, 'textarea[name=description]'
    element :linkideia, 'input[name=link]'
    element :btnsalvar, '#btnsalvar'
    element :btnvoltar, 'a[id="btnvoltar"]'
    element :btninicio, '#btninicio'
    
    def preencher_titulo(titulo_ideia)
        titulo.visible?
        titulo.set titulo_ideia
    end

    def preencher_categoria(categoria_ideia)
        categoria.visible?
        categoria.set categoria_ideia
    end
    
    def preencher_linkimagem(linkimagem_ideia)
        linkimagem.visible?
        linkimagem.set linkimagem_ideia
    end

    def preencher_descricao(descricao_ideia)
        descricao.visible?
        descricao.set descricao_ideia
    end

    def preencher_linkideia(linkideia_ideia)
        linkideia.visible?
        linkideia.set linkideia_ideia
    end

    def clicar_adicionar
        btnadicionar.click
    end

    def clicar_salvar
        btnsalvar.click
    end

    def clicar_voltar
        btnvoltar.visible?
        btnvoltar.click
    end

    def clicar_inicio
        btninicio.visible?
        btninicio.click
    end
end