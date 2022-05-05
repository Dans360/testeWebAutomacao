class EndToEndPage < SitePrism::Page
    set_url '/users/new'
    
    element :nome , '#user_name'
    element :ultimo_nome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'    
    element :criar, 'input[value="Criar"]'
    
    def preencherusuario
        nome.set 'cucumber'
        ultimo_nome.set 'capybara'
        email.set 'testscapybara@gmail.com'
        endereco.set 'rua testes'
        universidade.set 'Anhembi murumbi'
        profissao.set 'Analista'
        genero.set 'Masculino'
        idade.set '34'
        criar.click           
    end
end

class BotaoEditar < SitePrism::Page
    element :editar,'.btn.waves-light.blue' #botao Editar
    def editarclick
        editar.click
    end
end

class EditarUsuarioExistente < SitePrism::Page
    
    element :nome , '#user_name'
    element :ultimo_nome, '#user_lastname'
    element :email, '#user_email'    
    element :criar, 'input[value="Criar"]'
    
    def editar
        nome.set 'Samurai'
        ultimo_nome.set 'Afro'
        email.set 'afrosamurai@gmail.com'
        criar.click 
    end
end