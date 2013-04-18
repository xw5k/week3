Myapp::Application.routes.draw do

  get "/idcards", controller: 'idcards', action: 'index'
  get "/landmarks", controller: 'idcards', action: 'landmarks'

end
