class AddConfirmationToTrades < ActiveRecord::Migration[5.0]
  def change
    add_column :trades, :confirmation, :boolean, default: false
  end
end
