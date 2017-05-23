class AlbumsController < ApplicationController

  # GET /albums
  def index
    @albums = Album.all
    json_response(Picture.show_without_ids(@albums.first.to_json))
  end

end
