Rails.application.routes.draw do
  root('static#home')
  get '/menu', to: 'static#menu'
  get '/about_us', to: 'static#about_us'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: "sessions#logout"

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  resources :cart_products do
    resources :cart, only: [:show]
  end
  
  resources :products 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
