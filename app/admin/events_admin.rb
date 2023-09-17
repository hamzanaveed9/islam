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
    column :event_type
    column :start_time
    column :end_time
    actions
  end

  active_storage_fields do
    [:image]
  end

  form do |event|
    text_field :heading
    text_area :details
    text_field :scholar
    date_field :date
    select :event_type, Event::EVENT_TYPES
    datetime_field :start_time
    datetime_field :end_time
    active_storage_field :image
  end
end
