# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_10_005138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avaliacaos", force: :cascade do |t|
    t.text "avaliacao_texto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contatos", force: :cascade do |t|
    t.text "nome_contato"
    t.text "email_contato"
    t.integer "telefone"
    t.text "texto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "estabelecimentos", force: :cascade do |t|
    t.string "nome"
    t.string "nome_proprietario"
    t.string "email"
    t.string "senha"
    t.text "descricao"
    t.integer "capacidade"
    t.string "endereco"
    t.integer "numero"
    t.string "cidade"
    t.string "estado"
    t.string "pais"
    t.integer "cnpj"
    t.integer "telefone"
    t.binary "imagem"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string "nome"
    t.date "data_evento"
    t.string "data_limite_inscricao"
    t.integer "capacidade"
    t.binary "imagem"
    t.text "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "generos", force: :cascade do |t|
    t.text "nome_genero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grupo_musicals", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.string "nome_artistico"
    t.string "email"
    t.string "senha"
    t.datetime "data_nascimento"
    t.string "endereco"
    t.integer "numero"
    t.integer "cep"
    t.string "cidade"
    t.string "estado"
    t.string "pais"
    t.bigint "telefone"
    t.text "biografia"
    t.float "salario_hora"
    t.binary "imagens"
    t.binary "video"
    t.integer "cpf"
    t.integer "pontos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "instrumentos", force: :cascade do |t|
    t.text "nome_instrumento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "negociacaos", force: :cascade do |t|
    t.float "salario_combinado"
    t.string "status_negociacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "redes", force: :cascade do |t|
    t.text "nome_rede"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipo_estabelecimentos", force: :cascade do |t|
    t.text "nome_tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
