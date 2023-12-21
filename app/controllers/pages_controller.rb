class PagesController < ApplicationController
  def home
    @sliders = Slider.all
    @about = About.first
    @events = Event.all
    @latest_event = Event.order(:date).first
    @services = Service.on_homepage.limit(6)
    @feedback = Feedback.new
    @contacts = Contact.all
    @galleries = Gallery.on_homepage.limit(6)
  end

  def about_us
    @about = About.first
    @feedback = Feedback.new
    @contacts = Contact.all
  end
end
