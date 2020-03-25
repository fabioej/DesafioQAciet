class LoginPage
    include Capybara::DSL

    def go
        visit ''
    end

    def entre
        click_link('Entre ou cadastre-se')
    end

    def logar(usuario, senha)
        find('#j_username').set usuario
        find('#j_password').set senha
        click_button "Entrar"
    end

end