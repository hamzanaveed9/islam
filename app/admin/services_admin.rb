Trestle.resource(:services) do
  menu do
    item :services, icon: "fa fa-star"
  end

  table do
    column :id
    column :name
    column :logo
    actions
  end
end
