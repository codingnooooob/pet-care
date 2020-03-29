Rails.application.routes.draw do
  devise_for :users
  root "users#login"
  get "users/:id" => "users#show"
  post "animals/create" => "animals#create"
  get "animals/new" => "animals#new"
  get "users/animals/show/:id" => "animals#showw"
  
  resources :users
end