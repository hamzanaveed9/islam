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
      text_area :description
      active_storage_field :front_image
    end
    tab :media do
      active_storage_field :slider_image_1
      active_storage_field :slider_image_2
      active_storage_field :slider_image_3
      active_storage_field :images
    end
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  # form do |gallery|
  #   text_field :name
  #
  #   row do
  #     col { datetime_field :updated_at }
  #     col { datetime_field :created_at }
  #   end
  # end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:gallery).permit(:name, ...)
  # end
end
