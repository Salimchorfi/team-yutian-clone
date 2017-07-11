class AddPhotoToJam < ActiveRecord::Migration[5.0]
  def change
    add_column :jams, :photo, :string
  end
end
