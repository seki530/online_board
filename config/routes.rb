Rails.application.routes.draw do
  
  root to: 'tops#top'
  
  get 'valorants/index'
  get 'valorants/show'
  get 'valorants/new'
  get 'valorants/edit'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
