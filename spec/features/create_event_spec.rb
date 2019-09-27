require 'rails_helper.rb'

# Aqui eu escrevo os passos dos testes

feature 'Criar Evento' do
    scenario 'Consegue abrir tela de eventos' do
        # Visitar rota de evento
        visit '/events'
        # Clicar em criar em criar evento
        click_link 'Criar Evento'
        # Preencher com as informacoes
        fill_in 'NomeEvento', with: 'nome'
        fill_in 'Data', with: 'data'
        fill_in 'DataAplicacao', with: 'data_aplicacao'
        fill_in 'Capacidade', with: 'capacidade'
        fill_in 'Descricao', with: 'descricao'
        # Clicar no botao de cadastrar evento
        click_link 'Cadastrar Evento'
        # Esperar que a pagina tenha o conteudo enviado
        expect(page).to have_content('nome')
        expect(page).to have_content('data')
        expect(page).to have_content('data_aplicacao')
        expect(page).to have_content('capacidade')
        expect(page).to have_content('descricao')
    end
end