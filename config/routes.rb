Rails.application.routes.draw do
  get "/" => "homes#index"
  get "/about" => "homes#about"

  get "/memos/index" => "memos#index"
  get "/memos/new" => "memos#new"
  post "/memos" => "memos#create"
  get "/memos/:id/edit" => "memos#edit"
  patch "/memos/:id" => "memos#update"
  delete "/memos/:id/" => "memos#destroy"

  get "/categories/:id" => "categories#show"

  get "/login" => "users#login_form"
  post "/login" => "users#login"
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  patch "/users/:id" => "users#update"
  post "/logout" => "users#logout"
end
