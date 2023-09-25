class EventsController < ApplicationController
  def index
    @events = Event.where(active: true).order(created_at: :asc).page(params[:page])
  end

  def show
    @event = Event.find(params[:id])
  end
end
