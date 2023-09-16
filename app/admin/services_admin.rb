Trestle.resource(:services) do
  menu do
    item :services, icon: "fa fa-folder"
  end

  table do
    column :id
    column :name
    column :logo
    actions
  end
end
