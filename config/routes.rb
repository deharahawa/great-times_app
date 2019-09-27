Rails.application.routes.draw do
  get 'events/index'
  get 'event/create'
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
