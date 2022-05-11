Rails.application.routes.draw do
  
  resources :categories
  resources :foods
  devise_for :users
  root 'foods#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      devise_for :users, controllers: { sessions: :sessions }
      resources :foods, only: [:index, :show]
      resources :user, only: [:show, :update]
    end
  end

end
