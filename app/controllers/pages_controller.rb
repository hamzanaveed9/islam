class PagesController < ApplicationController
  def home
    @sliders = Slider.all
    @about = About.first
    @events = Event.all
    @latest_event = Event.order(:date).first
    @services = Service.all
    @feedback = Feedback.new
  end

  def about_us
    @about = About.first
  end
end
