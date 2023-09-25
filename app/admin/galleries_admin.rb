Trestle.resource(:galleries) do
  menu do
    item :galleries, icon: "fa fa-images"
  end

  table do
    column :id
    column :title
    column :description
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
    end
  end
end
