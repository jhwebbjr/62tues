class BooksController < ApplicationController
  def collection
    @books = Book.all
  end

  def new
    render "new"
  end

  def create
    Book.create(book_params)

    redirect_to "/books"
  end

  def find
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to "books"
  end

  private def book_params
    params.require("book").permit(
    "title",
    "isbn",
    "description"
    )
  end


end
