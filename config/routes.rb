Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root 'home#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :dashboard, only: :index
      resources :search, only: :index
      resources :categories, only: %i[index show]
    end    
  end
end
