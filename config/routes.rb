Rails.application.routes.draw do
  resources :jams do
    resources :comments, only: [:new, :create]
  end

  resources :comments, only: [:destroy]

  root to: 'jams#index'
  # devise_for :users,
  #   controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :users, controllers: {registration: 'registration', omniauth_callbacks: 'users/omniauth_callbacks'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


