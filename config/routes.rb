Rails.application.routes.draw do
  resources :foods
  devise_for :users
  root 'foods#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
