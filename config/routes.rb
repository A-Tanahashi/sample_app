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
  
end
