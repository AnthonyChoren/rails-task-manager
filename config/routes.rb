Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tasks#index"

  get "tasks", to: "tasks#index"

  get "new", to: "tasks#new"
  get "tasks/:id", to: "tasks#show", as: "task"

  delete "tasks/:id", to: "tasks#destroy", as: "delete_task"
  post "tasks", to: "tasks#create"

  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "tasks/:id", to: "tasks#update"

end
