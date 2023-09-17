class PagesController < ApplicationController
  def home
    @sliders = Slider.all
    @about = About.first
  end
end
