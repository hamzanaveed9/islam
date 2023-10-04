Trestle.resource(:events) do
  menu do
    item :events, icon: "fa fa-times-circle"
  end

  table do
    column :id
    column :heading
    column :details
    column :scholar
    column :date
    column :event_types
    column :start_time
    column :end_time
    column :active, label: "Active" do |event|
      event.active ? status_tag("Yes", :success) : status_tag("No", :danger)
    end
    actions
  end

  active_storage_fields do
    [:image]
  end

  form do |event|
    text_field :heading
    editor :details
    text_field :scholar
    date_field :date
    select :event_types, Event::EVENT_TYPES, { label: "Event Types" }, multiple: true
    datetime_field :start_time
    datetime_field :end_time
    active_storage_field :image
    check_box :active, label: "Active"
  end
end
