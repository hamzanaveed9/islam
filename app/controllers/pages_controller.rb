class PagesController < ApplicationController
  def home
    @sliders = Slider.all
    @about = About.first
    @events = Event.all
    @latest_event = Event.order(:date).first
    @services = Service.all
    @feedback = Feedback.new
    @contacts = Contact.all
  end

  def about_us
    @about = About.first
    @feedback = Feedback.new
    @contacts = Contact.all
  end
end
