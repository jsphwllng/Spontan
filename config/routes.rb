Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :members, only: [:show]
  resources :events, only: [:new, :index, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#comment
