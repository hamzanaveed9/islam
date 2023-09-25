class AddPhotoToGallery < ActiveRecord::Migration[6.1]
  def change
    add_reference :photos, :gallery, index: true
  end
end
