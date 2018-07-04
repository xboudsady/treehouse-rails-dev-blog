Rails.application.routes.draw do
  resources :posts
  get '/pages', to: 'pages#index'
  get '/pages/:id', to: 'pages#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
