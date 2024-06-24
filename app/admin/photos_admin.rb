Trestle.resource(:photos) do
  menu do
    item :photos, icon: "fa fa-images"
  end

  search do |query|
    if query.present?
      collection.joins(:gallery).where("galleries.title ILIKE ?", "%#{query}%")
    else
      collection.includes(:gallery)
    end
  end

  table do
    column :id
    column :title
    column :description
    column :gallery
    column :active, label: "Active" do |event|
      event.active ? status_tag("Yes", :success) : status_tag("No", :danger)
    end
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
      check_box :active, label: "Active"
    end
  end
end
