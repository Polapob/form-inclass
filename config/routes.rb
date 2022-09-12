Rails.application.routes.draw do
  get 'score/index'
  get 'score/edit', to:"score_table#edit"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/main/test", to: "form#index"
  get "/", to: "form#home"
  get "/score/list", to: "score_table#list"
end
