class BookController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def create
   
    @book = Book.new(book_params)
   
    @book.save
 
    redirect_to '/show'
  end

  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redilect_to '/index'
  end
  
  private
  
  def book_params
   params.require(:book).permit(:title, :body)
  end
end
