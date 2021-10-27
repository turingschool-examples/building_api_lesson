class Api::V1::BooksController < ApplicationController
    def index 
        render json: BookSerializer.new(Book.all)
    end 

    def show 
        render json: BookSerializer.one_book(Book.find(params[:id]))
    end 

    def create 
        book = Book.create(book_params)
        if book.save 
            render json: book
        end 
    end 
    
    def update 
        book = Book.find(params[:id])
        book.update(book_params)
        render json: book
    end 

    def destroy 
        book = Book.find(params[:id])
        Book.destroy(params[:id])
        render json: book
    end 

    private 
    
    def book_params
        params.require(:book).permit(:title,:author,:summary,:genre,:number_sold)
    end
end