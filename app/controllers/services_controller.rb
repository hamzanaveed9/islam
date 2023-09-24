class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
    @feedbacks = @service.feedbacks
    @feedback = @service.feedbacks.new
  end
end
