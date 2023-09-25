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
    column :active, label: "Active" do |event|
      event.active ? status_tag("Yes", :success) : status_tag("No", :danger)
    end
    actions
  end

  active_storage_fields do
    [:background_image, :logo]
  end

  form do |slider|
    text_field :header
    text_field :title
    text_field :context
    editor :description
    text_field :link_text
    text_field :link_address
    active_storage_field :logo
    check_box :active, label: "Active"


    # Active Storage field for background image
    active_storage_field :background_image, label: 'Background Image'
  end
end
