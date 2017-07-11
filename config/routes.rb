Rails.application.routes.draw do
  resources :jams do
    resources :comments, only: [:new, :create]
  end

  resources :comments, only: [:destroy]

  devise_for :users
  root to: 'jams#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


