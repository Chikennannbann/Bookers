class BooksController < ApplicationController
  def index
   @book = Book.new
   @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @books = Book.all
    if @book.save
     redirect_to book_path(@book.id)
     flash[:notice] = "Book was successfully created."
    else
     render:index
    #  renderで直接ビューに行ってしまうため@books = Book.allが反映されていなかった。
    # バリデーションは空かどうかであるから@booksの情報が抜けていてもエラーのはならなかった。
    # この場合@booksはelse内でもok
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
   if @book.update(book_params)
    redirect_to book_path(@book.id)
    flash[:notice] = "Book was successfully updated."
   else
    render:edit
   end
  end

  def destroy
   book = Book.find(params[:id])
   book.destroy
   redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
