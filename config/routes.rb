Rails.application.routes.draw do

  get 'grupo_musicals/search' => 'grupo_musicals#search', as: 'grupo_musicals/search'
  get 'login' => 'grupo_musicals#login', as: 'grupo_musicals/login'

  resources :home
  resources :eventos
  resources :estabelecimentos
  resources :grupo_musicals
  resources :negociacaos
  resources :avaliacaos
  resources :tipo_estabelecimentos
  resources :generos
  resources :instrumentos
  resources :redes
  resources :contatos
  get 'events/index'
  get 'event/create'
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
