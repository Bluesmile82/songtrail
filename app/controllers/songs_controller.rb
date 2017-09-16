class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  def index
    @songs = Song.all.sort_by{ |song| song.title }
  end

  def show
  end

  def new
    @song = Song.new
  end

  def edit
  end

  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        song_params[:playlist_ids].each do |playlist_id|
          PlaylistSong.find_or_create_by(playlist_id: playlist_id, song_id: @song.id)
        end
        format.html { redirect_to @song, notice: 'Song was successfully created.' }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    song_params[:playlist_ids].each do |playlist_id|
      PlaylistSong.find_or_create_by(playlist_id: playlist_id, song_id: @song.id)
    end

    if @song.update(song_params)
      p song_params
      p song_params
      p song_params
      p song_params
      redirect_to @song, notice: 'Song was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_url, notice: 'Song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:title, :author, :times, :key, :tempo, :tab, :lyrics, :completeness, :backing_track, :style, :playlist_ids => [])
    end
end
