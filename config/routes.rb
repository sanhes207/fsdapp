Rails.application.routes.draw do
  resources :projects, only: [:index] do
    put '/todos/:id', to: 'todos#update'
  end

  post 'todos', to: 'todos#create'
end
