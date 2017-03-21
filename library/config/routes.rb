Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/books", controller: "books", action: "collection"

  # post "/books", controller: "", action: ""
  #
  # get "/books/:id", controller: "", action: ""
  #
  # patch "/books/:id", controller: "", action: ""
  #
  # delete "/books/:id", controller: "", action: ""
end
