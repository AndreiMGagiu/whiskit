Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :meals do
    resources :orders
  end
   # resources :orders, only :destroy
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
