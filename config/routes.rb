Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # , as: :new_task can be named anything you want, as long as the naming convention is consistent in all filepaths
  get '/tasks', to: 'tasks#index'
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  get '/tasks/:id', to: 'tasks#show', as: :task
  delete '/tasks/:id', to: 'tasks#destroy'
end
