Trestle.resource(:abouts) do
  menu do
    item :abouts, icon: "fa fa-info-circle"
  end

  collection do
    model.includes(:feedbacks)
  end

  table do
    column :id
    column :title
    column :short_description
    column :description
    column :link_text
    column :link_address
    actions
  end

  active_storage_fields do
    [:images]
  end

  form do |about|
    tab :about do
      text_field :title
      text_area :short_description
      editor :description
      text_field :link_text
      text_field :link_address
      active_storage_field :images, label: 'Add four images for About Us'
    end

    tab :feedbacks, badge: about.feedbacks.count do
      table FeedbacksAdmin.table, collection: about.feedbacks
    end
  end
end
