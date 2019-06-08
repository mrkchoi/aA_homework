class TracksController < ApplicationController
  def new
    @track = Track.new
    @albums = Album.all
    render :new
  end

  def create
    @track = Track.new(track_params)
    
    if @track.save
      redirect_to album_url(@track.album_id)
    else
      flash.now[:errors] = ["Invalid track info"]
      render :new
    end
  end

  def show
    @track = Track.find_by(id: params[:id])
    render :show
  end

  def edit
    @track = Track.find_by(id: params[:id])
    @albums = Album.all

    render :edit
  end

  def update
    @track = Track.find_by(id: params[:id])
    @track.update_attributes(track_params)

    render album_url(@track.album_id)
  end

  def destroy
    @track = Track.find_by(id: params[:id])
    @album_id = @track.album_id
    @track.destroy

    redirect_to album_url(@album_id)
  end

  private

  def track_params
    params.require(:track).permit(:title, :album_id, :lyrics, :track_type, :ord, :id)
  end
  
end
