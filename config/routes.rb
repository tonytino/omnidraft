Rails.application.routes.draw do
  # For details on the DSL available within this file
  # see http://guides.rubyonrails.org/routing.html

  # omnivision will be primary offering
  # an easy means to quickly determine
  # what your opponent could play with
  # their current board state
  root 'omnivision#index'

  get '/search', to: 'omnivision#search'
end
