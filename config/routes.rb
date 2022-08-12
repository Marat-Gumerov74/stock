Rails.application.routes.draw do
  root 'magazines#index'
  resources :magazines
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
