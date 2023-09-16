Trestle.resource(:sliders) do
  menu do
    item :sliders, icon: "fa fa-star"
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
end
