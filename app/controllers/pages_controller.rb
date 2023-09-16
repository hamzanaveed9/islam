class PagesController < ApplicationController
  def home
    @sliders = Slider.all
  end
end
