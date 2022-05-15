Rails.application.routes.draw do
  
  resources :categories
  resources :foods
  devise_for :users
  root 'foods#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      # Devise routes
      devise_for :users, controllers: { sessions: 'api/v1/sessions' }

      # Foods routes
      resources :foods, only: [:index, :show]
      get '/foods/byCategory/:id', to: 'foods#byCategory'

      # Categories routes
      resources :categories, only: [:index, :show]

      # User routes
      resources :user, only: [:show, :update]
    end
  end

end
