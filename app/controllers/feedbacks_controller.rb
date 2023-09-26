class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = build_feedback

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
    params.require(:feedback).permit(:name, :email, :subject, :comment, :service_id, :message)
  end

  private

  def build_feedback
    about = About.first
    if about.present?
      about.feedbacks.new(feedback_params)
    else
      Feedback.new(feedback_params)
    end
  end
end
