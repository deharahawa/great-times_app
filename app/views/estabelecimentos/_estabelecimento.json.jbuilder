json.extract! estabelecimento, :id, :nome, :nome_proprietario, :email, :senha, :descricao, :capacidade, :endereco, :numero, :cidade, :estado, :pais, :cnpj, :telefone, :imagem, :created_at, :updated_at
json.url estabelecimento_url(estabelecimento, format: :json)
