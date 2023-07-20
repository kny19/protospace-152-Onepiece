Rails.application.routes.draw do
  root to: 'prototypes#index'
  resources :tweets, only: [:index, :new]
  #resources :prototypes
end
