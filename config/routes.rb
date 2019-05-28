Rails.application.routes.draw do
root 'lists#index'

resources :boards
resources :lists do
  resources :tasks, only: [:index, :new, :create, :destroy]
 end
end
