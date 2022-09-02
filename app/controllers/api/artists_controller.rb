class Api::ArtistsController < ApplicationController
    before_action :set_billboard
    before_action :set_artist only: [:show, :update, :destroy]

    def index
        render json: @billboar.artists 
    end

    def show
        render json: @artists
    end
    def create
        @artist = @billboard.artists.new(artist_params)
        if @artist.save
            render json: @artist
        else
            render json: {errors: @artist.errors },
            status: :unprocessable_entity
        end
    end
    def update
        if @artist.update(artist_params)
            render json: @artist
        else
            render json: {errors: @artist.errors },
            status: :unprocessable_entity
        end
    end
    def destroy
        if @artist.destroy
            render json: {message: 'Artist deleted'}
        else 
            render json: {message: 'Could not delete Artist'}
        end
    end

    private
    def set_billboard
        @billboard = Billboard.find(params[:topic_id])
    end
    def set_artist
        @artist = @billboard.artist.find(params[:id])
      end
  
      def artist_params
        params.require(:artist).permit(:title, :body)
      end

end
