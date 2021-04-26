Rails.application.routes.draw do
  root('static#home')
  get '/menu', to: 'static#menu'
  get '/about_us', to: 'static#about_us'
  get '/profile', to: 'users#profile'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create', as: 'post_signup'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  
  delete '/logout', to: "sessions#logout"

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  resources :cart_products do
    resources :cart, only: [:show]
  end
  
  resources :products 
  get '/search', to: 'products#search', as: 'search'
  
  post '/products/add_to_cart/:id', to: 'products#add_to_cart', as: 'add_to_cart'
  delete '/products/delete_cart_item/:id', to: 'products#delete_cart_item', as: 'delete_cart_item'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
