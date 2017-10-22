Rails.application.routes.draw do
    
    namespace :api, defaults: {format: 'json'} do
        namespace :v1 do
            resources :users
            resources :projects
        end
    end
    
  root 'static_pages#home'

  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  resources :projects
  resources :users
    
end
