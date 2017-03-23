Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/books", controller: "books", action: "collection"

  get "/books/new", controller: "books", action: "new"

  post "/books", controller: "books", action: "create"
  #
  get "/books/:id", controller: "books", action: "find"
  #
  get "/books/:id/edit", controller: "books", action: "edit"
  #
  patch "/books/:id", controller: "books", action: "update"
  # delete "/books/:id", controller: "", action: ""
end
