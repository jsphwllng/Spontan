Rails.application.routes.draw do
  get 'reviews/show'
  get 'reviews/new'
  get 'reviews/create'
  get 'members/new'
  get 'members/create'
  get 'members/update'
  get 'members/destroy'
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/create'
  get 'events/update'
  get 'events/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "members/:id/", to: 'members#show'
end
