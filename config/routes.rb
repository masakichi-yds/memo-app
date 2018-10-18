Rails.application.routes.draw do
  root to: "homes#top"
  get "/about" => "homes#about"

  #get "/memos" => "memos#index"
  #get "/memos/new" => "memos#new"
  #post "/memos" => "memos#create"
  #get "/memos/:id/edit" => "memos#edit"
  #patch "/memos/:id" => "memos#update"
  #delete "/memos/:id/" => "memos#destroy"
  resources :memos

  get "/categories/:id" => "categories#show"

  get "/login" => "users#login_form"
  post "/login" => "users#login"
  get "/signup" => "users#new"
  post "/logout" => "users#logout"
  #post "/users" => "users#create"
  #get "/users/:id" => "users#show"
  #get "users/:id/edit" => "users#edit"
  #patch "/users/:id" => "users#update"
  resources :users


end
