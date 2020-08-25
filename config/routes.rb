Rails.application.routes.draw do
  # get 'reviews/show'
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'members/show'
  # get 'members/new'
  # get 'members/create'
  # get 'members/update'
  # get 'members/destroy'

  resources :events
  # get 'events/index', to: 'events#index'
  # get 'events/new'
  # get 'events/:id', to: 'events#show'
  # get 'events/create'
  # get 'events/update'
  # get 'events/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
