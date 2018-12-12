class ArtistsController < ApplicationController
#binding.pry

    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def create
        @artist = Artist.new(artists_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(artists_params)
        redirect_to artist_path(@artist)
    end

    private

    def artists_params
        params.require(:artist).permit(:name, :bio)
    end

end