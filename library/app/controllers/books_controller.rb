class BooksController < ApplicationController
  def collection
    @books = Book.all
  end

  
end
