Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'comments#index'
  resources :comments, only: [:index, :new, :create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
