class GenresController < ApplicationController 
#binding.pry

    def index
        @genres = Genre.all
    end

    def new
        @genre = Genre.new 
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def create
        @genre = Genre.new(genres_params)
        @genre.save
        redirect_to genre_path(@genre)
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genres_params)
        redirect_to genre_path(@genre)
    end

    private

    def genres_params
        params.require(:genre).permit(:name)
    end

end