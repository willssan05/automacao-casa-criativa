class Ideia

    include Capybara::DSL

    def go
        visit 'http://localhost:3000'
    end
    
    def preencher_titulo(titulo_ideia)
        find('input[name=title]').set titulo_ideia
    end

    def preencher_categoria(categoria_ideia)
        find('input[name=category]').set categoria_ideia
    end
    
    def preencher_linkimagem(linkimagem_ideia)
        find('input[name=image]').set linkimagem_ideia
    end

    def preencher_descricao(descricao_ideia)
        find('textarea[name=description]').set descricao_ideia
    end

    def preencher_linkideia(linkideia_ideia)
        find('input[name=link]').set linkideia_ideia
    end

    def clicar_adicionar
        click_link_or_button 'Adicionar Ideia'
    end

    def clicar_salvar
        find('button[id=btnsalvar]').click
    end

    def clicar_voltar
        find('a[id=btnvoltar]').click
    end

    def clicar_inicio
        find('button[id=Início]').click
    end
end
