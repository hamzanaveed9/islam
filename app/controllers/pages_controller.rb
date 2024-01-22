class PagesController < ApplicationController
  def home
    @sliders = Slider.page(params[:slider_page]).per(10)
    @about = About.first
    @events = Event.page(params[:event_page]).per(10)
    @latest_event = Event.order(date: :asc).first
    @services = Service.on_homepage.page(params[:service_page]).per(10)
    @feedback = Feedback.new
    @contacts = Contact.all
    @galleries = Gallery.on_homepage.page(params[:gallery_page]).per(10)
  end
  

  def about_us
    @about = About.first
    @feedback = Feedback.new
    @contacts = Contact.all
  end
end
