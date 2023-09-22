Trestle.resource(:services) do
  menu do
    item :services, icon: "fa fa-folder"
  end

  collection do
    model.includes(:feedbacks)
  end

  table do
    column :id
    column :name
    column :description
    actions
  end

  active_storage_fields do
    [:logo]
  end

  form do |service|
    tab :service do
      text_field :name
      text_area :description
      active_storage_field :logo
    end

    tab :feedbacks, badge: service.feedbacks.count do
      table FeedbacksAdmin.table, collection: service.feedbacks
    end
  end
end
