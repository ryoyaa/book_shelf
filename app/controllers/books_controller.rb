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
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      flash.now[:alert] = @book.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path
    else
      flash.now[:alert] = @book.errors.full_messages
      render :edit
    end
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
