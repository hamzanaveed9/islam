Trestle.resource(:sliders) do
  menu do
    item :sliders, icon: "fas fa-camera"
  end

  table do
    column :id
    column :header
    column :title
    column :context
    column :description
    column :link_text
    column :link_address
    actions
  end

  active_storage_fields do
    [:background_image, :logo]
  end

  form do |user|
    text_field :header
    text_field :title
    text_field :context
    text_area :description
    text_field :link_text
    text_field :link_address
    active_storage_field :logo
    active_storage_field :background_image
  end
end
