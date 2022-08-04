Rails.application.routes.draw do
  get 'sessions/new'
  # Defines the root path route ("/")
  root "static_pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/about", to: "static_pages#about"
  get "/help", to: "static_pages#help"
  get "/contact", to: "static_pages#contact"
  get  "/signup",  to: "users#new"

  resources :users
end
