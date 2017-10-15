Rails.application.routes.draw do
    
  resources :users
    
  resources :usersapi  
    
  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/help'  
  get 'static_pages/about'

  resources :projects
#  resources :users
    
end
