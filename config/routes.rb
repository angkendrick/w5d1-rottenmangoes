Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'users/new'

  get 'users/create'

  # get 'movies/index'
  #
  # get 'movies/show'
  #
  # get 'movies/new'
  #
  # get 'movies/edit'

  resources :movies #refactored code from above to this, makes available al possible routes

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

end
