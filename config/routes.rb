Rails.application.routes.draw do
  resources :todos
  root 'todos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match '/add_task', :to=> 'todos#add_task',:via=> 'get'
  
  match '/create', :to=> 'todos#create',:via=> 'post'
  get '/complete/:id' => 'todos#complete', as: :complete
  get '/delete/:id' => 'todos#delete', as: :delete
end
