Rails.application.routes.draw do
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
