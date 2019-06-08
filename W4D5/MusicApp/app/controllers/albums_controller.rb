class AlbumsController < ApplicationController
  def new
    @album = Album.new(band_id: params[:band_id])
    @bands = Band.all
    # fail
    render :new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to album_url(@album)
    else
      render new_band_album_url(params[:album][:band_id])
    end
  end

  def edit
    @album = Album.find_by(id: params[:id])
    @bands = Band.all

    render :edit
  end

  def show
    @album = Album.find_by(id: params[:id])
    @band = Band.find_by(id: @album.band_id)
    
    render :show
  end

  def update
    @album = Album.find_by(id: params[:id])
    @album.update_attributes(album_params)

    if @album.save
      redirect_to album_url(@album)
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find_by(id: params[:id])
    @band = @album.band_id
    @album.destroy
    redirect_to band_url(@band)
  end

  private

  def album_params
    params.require(:album).permit(:band_id, :title, :year, :studio_album)
  end
end


# new_band_album GET    /bands/:band_id/albums/new(.:format)   albums#new
#         albums POST   /albums(.:format)                      albums#create
#     edit_album GET    /albums/:id/edit(.:format)             albums#edit
#          album GET    /albums/:id(.:format)                  albums#show
#                PATCH  /albums/:id(.:format)                  albums#update
#                PUT    /albums/:id(.:format)                  albums#update
#                DELETE /albums/:id(.:format)                  albums#destroy