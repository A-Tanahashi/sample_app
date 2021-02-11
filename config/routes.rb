Rails.application.routes.draw do
  root 'static_pages#home'
  #root 'application#hello'
  
  get 'static_pages/home'
  # => Static_paged#home
  
  get 'static_pages/help'
  # => Static_paged#help
  
  get 'static_pages/about'
  # => Static_paged#about
  
  get 'static_pages/contact'
  # => Static_paged#contact
  
end
