class SlidersController < ApplicationController
  def index
    @sliders = Slider.all
  end

  def new
    @slider = Slider.new
    # Initialize an array to hold up to 3 images
    @slider.images = []
  end
  
  def create
    @slider = Slider.new(slider_params)

    if @slider.save
      redirect_to sliders_path, notice: 'Slider was successfully created.'
    else
      render :new
    end
  end

  private

  def slider_params
    # Permit an array of images by changing :image to :images
    params.require(:slider).permit(images: [], title: "", description: "")
  end
end
