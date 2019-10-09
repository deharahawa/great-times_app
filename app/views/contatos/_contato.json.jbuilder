json.extract! contato, :id, :nome_contato, :email_contato, :telefone, :texto, :created_at, :updated_at
json.url contato_url(contato, format: :json)
