Rails.application.routes.draw do
  root to: 'prototypes#index'
  resources :prototypes
  #resources :prototypes
end
