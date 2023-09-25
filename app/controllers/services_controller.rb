class ServicesController < ApplicationController
  def index
    @services = Service.where(active: true).order(created_at: :asc).page(params[:page])
  end

  def show
    @service = Service.find(params[:id])
    @feedbacks = @service.feedbacks
    @feedback = @service.feedbacks.new
  end
end
