Rails.application.routes.draw do
  devise_for :users
  root "users#login"
  post "tasks/status/:id" => "tasks#status"
  resources :users
  resources :animals
  resources :tasks

  resource :user do
    resources :animals do
      resources :tasks
    end
  end
end