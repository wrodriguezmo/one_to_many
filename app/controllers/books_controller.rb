class BooksController < ApplicationController
    def index 
       author = Autor.find(params[:author_id])
       render json: author.books, status: :ok
    end

    def create
        author = Autor.find(params[:author_id])
        book = Book.create(params.permit(:name, :code, :author_id))

        render json: book, status: :ok
    end
end
