Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users, only: [:create, :new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
