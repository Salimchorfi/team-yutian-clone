Rails.application.routes.draw do
  resources :jams do
    resources :comments, only: [:new, :create]
  end

  resources :comments, only: [:destroy]

  # get 'users/:id' => 'users#show'
  # match '/users/:id', :to => 'users#show', :as => :user

  root to: 'jams#index'
  # devise_for :users,
  #   controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :users, controllers: {registration: 'registration', omniauth_callbacks: 'users/omniauth_callbacks'}

  get 'users/:id/show', :to => 'users#show', :as => :user_show
  post 'users/:id/update', :to => 'users#update', :as => :user_update

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


