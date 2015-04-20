Rails.application.routes.draw do

  # Put your routes here
  root 'places#index'
  get '/places' => 'places#index'
  get '/places/new' => 'places#new'
  get '/places/:id/review' => 'places#review'
  get '/places/create' => 'places#create'
  get '/places/:id/delete' => 'places#delete'
  get '/places/:id/edit' => 'places#edit'
  get '/places/:id/update' => 'places#update'
  get '/places/:id' => 'places#show'

end
