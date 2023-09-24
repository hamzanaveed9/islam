class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.order(:created_at).page params[:page]
  end

  def show
    @gallery = Gallery.find(params[:id])
  end
end
