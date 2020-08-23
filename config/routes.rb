Rails.application.routes.draw do
  root to: "static_pages#root"

  namespace :api, defaults: {format: :json} do 
    resources :users, only: [:create, :update]
    resources :session, only: [:create, :destroy, :show]
    resources :highlights, only: [:create, :destroy, :update, :show, :index] do
      resources :comments, module: :highlights
    end
    resources :comments do
      resources :comments, module: :comments
    end
    resources :books, only: [:create, :destroy, :update, :show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
