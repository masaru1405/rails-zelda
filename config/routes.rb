Rails.application.routes.draw do
  root 'zelda_info#index'
  get '/search', to: 'zelda_info#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
