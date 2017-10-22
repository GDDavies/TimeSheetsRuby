Rails.application.routes.draw do
    
    namespace :api, defaults: {format: 'json'} do
        namespace :v1 do
            resources :users
            resources :projects
        end
    end
    
  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/help'  
  get 'static_pages/about'

  resources :projects
  resources :users
    
end
