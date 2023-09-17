Trestle.resource(:abouts) do
  menu do
    item :abouts, icon: "fa fa-info-circle"
  end

  table do
    column :id
    column :title
    column :description
    column :link_text
    column :link_address
    actions
  end

  active_storage_fields do
    [:images]
  end

  form do |user|
    text_field :title
    text_area :description
    text_field :link_text
    text_field :link_address
    active_storage_field :images, multiple: true
  end
end
