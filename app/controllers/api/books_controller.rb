class Api::BooksController < ApplicationController

    def index
        @books = Book.all
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            render :show
        else
            render json: @book.errors.full_messages, status: 422
        end
    end

    # local Books to Book in show, destroy and update
    def show
        @book = Book.find(params[:id])
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        render :show
    end

    def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
            render :show
        else
            render json: @book.errors.full_messages, status: 422
        end
    end


    private 

    def book_params
        params.require(:book).permit(:title, :location, :user_id, :image)
    end
end
