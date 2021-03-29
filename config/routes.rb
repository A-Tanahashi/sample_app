Rails.application.routes.draw do
  root 'static_pages#home'
  #root 'application#hello'
  
  #get 'static_pages/home'
  # => Static_paged#home
  
  #get 'static_pages/help'
  # => Static_paged#help
  get '/help', to:'static_pages#help'
  
  #get 'static_pages/about'
  # => Static_paged#about
  get '/about', to:'static_pages#about'
  
  #get 'static_pages/contact'
  # => Static_paged#contact
  get '/contact', to:'static_pages#contact'
  get '/signup', to:'users#new'
  
  get    '/login',   to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users do
    member do
      get :following, :followers
      # GET /users/1/following
      # GET /users/1/followers
    end
  end
  
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
end
