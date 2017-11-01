Rails.application.routes.draw do
  devise_for :users
  resources :incomes
  resources :costs
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  #root 'categories#index'
end
