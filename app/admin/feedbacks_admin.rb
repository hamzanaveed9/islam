Trestle.resource(:feedbacks) do
  menu do
    item :feedbacks, icon: "fa fa-star"
  end

  table do
    column :id
    column :name
    column :email
    column :subject
    column :message
    actions
  end

  form do |service|
    text_field :name
    text_field :email
    text_field :subject
    text_area :message
  end
end
