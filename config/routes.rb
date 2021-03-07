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
  get "/",to:"home#index"
  resources :todos
  resources :users
  get "/signin",to:"sessions#new",as: :new_sessions
  post "/signin",to:"sessions#create",as: :sessions
  # get "user",to:"user#index"
end
