Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/images', to: 'images#index'
  
  # get '/images/new', to: 'images#new', as: 'new_image'
  # post '/images', to: 'images#create'
  
  # get '/images/:id/edit', to: 'images#edit', as: 'edit_image'
  # patch '/images/:id', to: 'images#update'
  
  # get 'images/:id', to: 'images#show', as: 'image'

  # delete '/images/:id', to: 'images#destroy'

  resources :images
  get '/most_recent', to: 'images#most_recent', as: 'recent'
end
