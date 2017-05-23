Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :spaces, only: [ :new, :index, :show, :create ] do
    resources :bookings, only: [ :new, :index, :create ]
  end
  resources :bookings, only: [ :show ]
  resources :users, only: [:show]
  mount Attachinary::Engine => "/attachinary"
  #resources :bookings, only: [ :new, :index, :show, :create ]
end
