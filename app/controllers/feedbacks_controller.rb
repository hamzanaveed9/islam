class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)

    if @feedback.save
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Feedback submitted successfully.' }
        format.js
      end
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :email, :subject, :comment)
  end
end
