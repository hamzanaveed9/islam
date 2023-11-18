Trestle.resource(:summaries) do
  menu do
    item :summaries, icon: "fa fa-star"
  end

  controller do
    def index
      @total_feedbacks = Feedback.count
      @total_services = Service.count
      @total_photos = Photo.count
      @total_events = Event.count
    end
  end
end
