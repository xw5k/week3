Freecycle::Application.routes.draw do

  # Routes for the Item resource:
  # CREATE
  get '/items/new', controller: 'items', action: 'new'
  post '/items', controller: 'items', action: 'create'

  # READ
  get '/items', controller: 'items', action: 'index'
  get '/items/:id', controller: 'items', action: 'show'

  # UPDATE
  get '/items/:id/edit', controller: 'items', action: 'edit'
  put '/items/:id', controller: 'items', action: 'update'

end
