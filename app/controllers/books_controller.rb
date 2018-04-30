class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book.save
    redirect_to books_path
  end

  def edit
  end

  def update
    @book.update(book_params)
    redirect_to book_path
  end

  def destroy
    @book.destroy
    redirect_to @book
  end

  private

  def book_params
    params.require(:book).permit(:name, :price, :publish, :publish_date)
  end

  def set_book
    @book = Book.find(params[:id])
  end

end
