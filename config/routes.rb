Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "restaurants", to: "restaurants#index"

  # resources :tasks

  root to: 'tasks#index'

  # list all tasks, index
  get 'tasks', to: 'tasks#index'

  # create -> new route needs to be before show, otherwise you get an error
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # show 1 task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # edit and update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # delete
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task

end
