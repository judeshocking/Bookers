class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to'/top'
  end

  def index
   @books = Book.all
   @books = Book.new
  end

  def update
    book = Book.find(params[:id])
    book.update(list_parms)
    redirect_to book_path(book.id)
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
