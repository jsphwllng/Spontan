Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :members, only: [:show]
  resources :events, only: [:new, :create, :show] do 
    resources :participations, only: [:create, :delete]
  end
  resources :participations, only: [:show] do
    resources :reviews, only: [:new, :create]
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#comment