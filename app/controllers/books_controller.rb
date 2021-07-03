class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      @books = Book.all
      @user = User.find(current_user.id)
      render books_path
    end
  end

  def index
    @books = Book.all
    @user = User.find(current_user.id)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
