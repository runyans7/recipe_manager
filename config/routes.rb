Rails.application.routes.draw do
  get 'comments/create'

  root "recipes#index"

  resources :ingredients
  resources :recipes do
    resources :comments
  end
end
