class AddMessageToTrades < ActiveRecord::Migration[5.0]
  def change
    add_column :trades, :message, :string
  end
end
