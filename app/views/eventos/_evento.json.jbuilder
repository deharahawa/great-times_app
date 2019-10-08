json.extract! evento, :id, :nome, :data_evento, :data_limite_inscricao, :capacidade, :imagem, :descricao, :created_at, :updated_at
json.url evento_url(evento, format: :json)
