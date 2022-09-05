Rails.application.routes.draw do
  get 'score/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/main/test", to: "form#index"
  get "/", to: "form#home"
end
