Rails.application.routes.draw do
  get 'reviews/new'

  get 'reviews/create'

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

  namespace :admin do
    resources :users
  end

  resources :movies do #refactored code from above to this, makes available al possible routes
    resources :reviews, only: [:new, :create]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  root to: 'movies#index'

end
