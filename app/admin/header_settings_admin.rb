Trestle.resource(:header_settings) do
  menu do
    item "Settings", icon: "fa fa-solid fa-cog"
  end

  table do
    column :id
    column :tagline
    column :menu_order
    column :footer_description
    column :office_working_days
    column :timings
    actions
  end

  form do |header_setting|
    tab :general do
      file_field :logo_image
      text_field :logo_height
      text_field :logo_width
      text_field :logo_text
      text_field :tagline
      text_field :footer_description
    end

    tab :menu do
      text_area :menu_order
    end

    tab :office do
      text_field :office_working_days,label:'Weekdays timings', placeholder: "Weekdays timings e.g., 8:00 am - 6:00 pm"
      text_field :timings, label:'Weekend timings', placeholder: "Weekend timings e.g., 8:00 am - 6:00 pm"
    end

    tab :footer_contacts do
      text_field :phone1,label:'Phone1'
      text_field :phone2, label:'Phone2'
      text_field :email, label:'email'
    end
  end
end
