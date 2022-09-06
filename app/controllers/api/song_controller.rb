class Api::SongController < ApplicationController
  before_action :set_artist
  before_action :set_song only: [:show, :update, :destroy]
  def skip-routes
  end

  def index
  render json: Song.all
end
def show
  @song = Song.find(params[:id])
  render json: @song
end
def create
  @song = Song.new(song_params)
  if @song.save
    render json: @song
  else
    render json: { errors: @song.errors },
    status: :unprocessable_entity
end
def updated
  @song = Song.find(params[:id])
  if @song.update(song_params)
    render json: { errors: @song.errors },
    status: :unprocessable_entity
end
def destroy
  @song = Song.find(params[:id])
  @song.destroy
  render json: { message: 'song deleted' }
  or
  Song.find(params[:id]).destroy
  render json: { message: 'song deleted' }
end

private
  def song_params
    params.require(:song).permit(:attr, :attr2, :everything the table has)
  end
  # def set_parent
  #   @artist = Artist.find(params[:parent_id])
  # end

end
