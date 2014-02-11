class SongsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @songs = @artist.songs.all
    render(:index)
  end

  def show
    render(:show)
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @artist.songs.create(
      title: params[:title], 
      year: params[:year]
      )
    redirect_to("/artists/#{@artist.id}")
  end 

  def new
    @artist = Artist.find(params[:artist_id])
    render(:new)
  end

  def edit
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])
    render(:edit)
  end

  def update
    @artist = Artist.find(params[:artist_id])
    @artist.songs.find(params[:id]).update(
      title: params[:title], 
      year: params[:year] 
      )
    redirect_to("/artists/#{@artist.id}")
  end
  def destroy
    @artist = Artist.find(params[:artist_id])
    @artist.songs.find(params[:id]).destroy
    redirect_to("/artists/#{@artist.id}")
  end
end