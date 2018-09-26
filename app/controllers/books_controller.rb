class BooksController < ApplicationController
    def index 
       author = Autor.find(params[:author_id])
       render json: author.books, status: :ok
    end

    def create
        book = Book.new
        author = Autor.find(params[:author_id])
        book.autor = author
        book.name = params[:name]
        book.code = params[:code]
        book.save
        puts "HHH"
        puts book.to_json
        puts "HHH"
        render json: book, status: :ok
    end
end
