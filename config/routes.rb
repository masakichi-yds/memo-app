Rails.application.routes.draw do
  root to:"memos#index"
  get "/memos/new", to:"memos#new"
  post "/memos", to: "memos#create"
  get "/memos/:id/edit", to:"memos#edit"
  patch "/memos/:id", to:"memos#update"
  delete "/memos/:id/", to:"memos#destroy"

  get "/categories/:id", to:"categories#show"
end
