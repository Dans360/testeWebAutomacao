
Quando('eu cadastro o usuário.') do
    @teste1 = EndToEndPage.new
    @teste1.load
    @teste1.preencherusuario
    sleep(2)
end 

Entao('verifico se o usuário foi cadastrado.') do
   texto = find('#notice')
   expect(texto.text).to eql 'Usuário Criado com sucesso' #verifico se usuário fui cadastrado
   sleep(2)
end
  
Quando('edito um ususario') do
    @test0 = BotaoEditar.new
    @test0.editarclick
   sleep(2)
end
  
Entao('verifico se o usuario foi editado') do
    @teste2 = EditarUsuarioExistente.new   
    @teste2.editar
    
    texto = find('#notice')
    expect(texto.text).to eql 'Seu Usuário foi Atualizado!' # verifico se usuario foi editado com sucesso
end  