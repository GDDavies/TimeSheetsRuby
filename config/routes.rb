Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  resources :projects
  resources :users
  root 'application#hello'
end
