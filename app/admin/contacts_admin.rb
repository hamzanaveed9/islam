Trestle.resource(:contacts) do
  menu do
    item :contacts, icon: "fa fa-phone"
  end

  table do
    column :email
    column :mobile, align: :center
    column :phone, align: :center
    actions
  end

  form do |contact|
    text_field :email
  
    row do
      col { text_field :mobile }
      col { text_field :phone }
    end
  end
end
