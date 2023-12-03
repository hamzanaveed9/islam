class FaqsController < ApplicationController
  def index
    @faqs = Faq.all.order(created_at: :asc)
  end
end
