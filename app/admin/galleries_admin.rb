Trestle.resource(:galleries) do
  menu do
    item :galleries, icon: "fa fa-images"
  end

  table do
    column :id
    column :title
    column :description
    column :active, label: "Active" do |event|
      event.active ? status_tag("Yes", :success) : status_tag("No", :danger)
    end
    column :display_on_homepage
    actions
  end

  active_storage_fields do
    [:front_image, :slider_image_1, :slider_image_2, :slider_image_3]
  end

  form do |gallery|
    tab :gallery do
      text_field :title
      editor :description
      active_storage_field :front_image
      check_box :active, label: "Active"
      check_box :display_on_homepage, label: "Display on homepage"
      number_field :home_position, label: "Home Position(Enter position from 1 to 4)"
    end
  end
end
