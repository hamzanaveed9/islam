Trestle.resource(:photos) do
  menu do
    item :photos, icon: "fa fa-images"
  end

  table do
    column :id
    column :title
    column :description
    column :gallery
    actions
  end

  active_storage_fields do
    [:image]
  end

  form do |gallery|
    tab :photo do
      text_field :title
      text_area :description
      select :gallery_id, Gallery.all.map { |g| [g.title, g.id] }
      active_storage_field :image, label: 'Photo'
    end
  end
end
