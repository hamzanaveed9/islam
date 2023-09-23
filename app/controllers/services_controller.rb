class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
    @feedback = @service.feedbacks.new
  end
end
