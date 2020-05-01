class Ideia

    include Capybara::DSL

    def go
        visit ''
    end
    
    def preencher_titulo(titulo_ideia)
        find(:css, 'input[name=title]').set titulo_ideia
    end

    def preencher_categoria(categoria_ideia)
        find(:css, 'input[name=category]').set categoria_ideia
    end
    
    def preencher_linkimagem(linkimagem_ideia)
        find(:css, 'input[name=image]').set linkimagem_ideia
    end

    def preencher_descricao(descricao_ideia)
        find(:css, 'textarea[name=description]').set descricao_ideia
    end

    def preencher_linkideia(linkideia_ideia)
        find(:css, 'input[name=link]').set linkideia_ideia
    end

     def clicar_adicionar
         find(:css, 'button[id=btnadicionar]').click
     end

    def clicar_salvar
        find(:css, 'button[id=btnsalvar]').click
    end

    def clicar_voltar
        find(:css, 'a[id=btnvoltar]').click
    end

    def clicar_inicio
        find(:css,'button[id=Início]').click
    end
end
