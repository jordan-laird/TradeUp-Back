class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.float :purchased_price
      t.string :stock
      t.boolean :status
      t.belongs_to :user
      t.string :stock_symbol

      t.timestamps
    end
  end
end

