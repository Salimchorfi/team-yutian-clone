class AddAdressToJams < ActiveRecord::Migration[5.0]
  def change
    add_column :jams, :address, :string
  end
end
