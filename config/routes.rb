Rails.application.routes.draw do
  # get 'movies/new'
  # get 'movies/create'
  # get 'movies/update'
  # get 'movies/edit'
  # get 'movies/index'
  # get 'movies/show'
  # get 'movies/destroy'
  
  post "movies",to:"movies#create"
  get "movies/new", to:"movies#new"

  patch "movies/:id",to:"movies#update"
  put "movies/:id",to:"movies#update"
  get "movies/:id/edit", to:"movies#edit"

  
  get "movies", to:"movies#index"
  get "movies/:id",to:"movies#show", as: "movie"
  
  destroy "movies/:id",to:"movies#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
