Rails.application.routes.draw do
  # get 'movies/index'
  #
  # get 'movies/show'
  #
  # get 'movies/new'
  #
  # get 'movies/edit'

  resources :movies #refactored code from above to this, makes available al possible routes


end
