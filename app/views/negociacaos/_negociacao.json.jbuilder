json.extract! negociacao, :id, :salario_combinado, :status_negociacao, :created_at, :updated_at
json.url negociacao_url(negociacao, format: :json)
