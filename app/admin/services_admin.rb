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
    column :active, label: "Active" do |event|
      event.active ? status_tag("Yes", :success) : status_tag("No", :danger)
    end
    actions
  end

  active_storage_fields do
    [:logo]
  end

  form do |service|
    tab :service do
      text_field :name
      editor :description
      active_storage_field :logo
      check_box :active, label: "Active"

    end

    tab :feedbacks, badge: service.feedbacks.count do
      table FeedbacksAdmin.table, collection: service.feedbacks
    end
  end
end
