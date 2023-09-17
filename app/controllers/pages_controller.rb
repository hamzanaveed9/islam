class PagesController < ApplicationController
  def home
    @sliders = Slider.all
    @about = About.first
    @events = Event.all
  end
end
