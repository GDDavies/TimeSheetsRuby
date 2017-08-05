Rails.application.routes.draw do
  resources :projects
  resources :users
  root 'application#hello'
end
