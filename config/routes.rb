Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  #RESOURCE
  #Todo is a resource
  # - list of resources can be seen :index
  # - single resource can be seen : show
  # - create a resource
 
  #match '/todos'=> 'todos#index', via: :get
  # get "todos",to:"todos#index"
  # get "todos/:id",to:"todos#show"
  # patch "todos/:id",to:"todos#update"
  resources :todos
  # get "user",to:"user#index"
end
