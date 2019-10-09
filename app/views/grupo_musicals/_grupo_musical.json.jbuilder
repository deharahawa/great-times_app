json.extract! grupo_musical, :id, :nome, :sobrenome, :nome_artistico, :email, :senha, :data_nascimento, :endereco, :numero, :cep, :cidade, :estado, :pais, :telefone, :biografia, :salario_hora, :imagens, :video, :cpf, :pontos, :created_at, :updated_at
json.url grupo_musical_url(grupo_musical, format: :json)
