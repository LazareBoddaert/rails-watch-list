Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'lists#index'
  resources :lists, only: %I[new show create] do
    resources :bookmarks, only: %I[new create]
  end
  resources :bookmarks, only: [:destroy]
end
