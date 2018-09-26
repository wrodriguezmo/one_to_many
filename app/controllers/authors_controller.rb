class AuthorsController < ApplicationController
    def index
        @authors = Autor.all
        puts @authors
        render json: @authors, status: :ok
    end

    def create
        @author = Autor.create(params.permit(:name, :doc, :email))
        puts "G"
        puts params
        puts "G"
        render json: @author, status: :created
    end
end
