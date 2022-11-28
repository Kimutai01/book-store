class BooksController < ApplicationController

    def index
        book=Book.all
        render json: book
    end

    def show
        book=Book.find(params[:id])
        render json: book
    end

    def create
        book=Book.create(book_params)
        render json: book
    end

    def update
        book=Book.find(params[:id])
        book.update_attributes(book_params)
        render json: book
    end

    def destroy
        book=Book.find(params[:id])
        if book.destroy
            head :no_content, status: :ok
        else
            render json: book.errors, status: :unprocessable_entity
        end
    end

    private

    def book_params
        params.require(:book).permit(:title,:year,:description,:image_url,:category)
    end
end
