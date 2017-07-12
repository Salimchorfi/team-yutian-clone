class AddCoordinatesToJams < ActiveRecord::Migration[5.0]
  def change
    add_column :jams, :latitude, :float
    add_column :jams, :longitude, :float
  end
end
