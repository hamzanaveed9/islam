class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.where(active: true).order(created_at: :asc).page(params[:page])
  end

  def show
    @gallery = Gallery.find(params[:id])
  end
end
