Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :spaces, only: [ :new, :index, :show, :create, :destroy ] do
    resources :bookings, only: [ :new, :index, :create ]
  end
  resources :spaces, only: [ :new, :index, :show, :create, :destroy ] do
      resources :reviews, only: :create
  end
  resources :bookings, only: [ :show, :destroy ]
  resources :reviews, only: :destroy
  resources :users, only: :show
  mount Attachinary::Engine => "/attachinary"
  #resources :bookings, only: [ :new, :index, :show, :create ]
end
