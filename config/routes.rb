Rails.application.routes.draw do
  get 'jams/index'

  get 'jams/show'

  get 'jams/new'

  get 'jams/edit'

  get 'jams/create'

  get 'jams/update'

  get 'jams/destroy'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
