class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all.page(params[:page]).order('created_at DESC')
  end

  def show
    @gallery = Gallery.find(params[:id])
  end
end
