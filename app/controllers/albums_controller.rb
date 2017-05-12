class AlbumsController < ApplicationController
  before_action :set_album, only: :index

  # GET /albums
  def index
    @albums = Album.first
    json_response(@albums)
  end

  private

    def set_album
      Picture.populate
    end
end
