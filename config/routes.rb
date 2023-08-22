Rails.application.routes.draw do

  get 'users/edit'
  get 'users/show'
  devise_for :users
  root to: 'tops#top'

  resources :valorants



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
