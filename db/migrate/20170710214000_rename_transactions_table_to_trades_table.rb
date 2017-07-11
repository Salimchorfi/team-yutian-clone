class RenameTransactionsTableToTradesTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :transactions, :trades
  end
end
