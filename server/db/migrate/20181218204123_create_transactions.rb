class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.float :purchased_price
      t.float :sold_price, default: 0
      t.string :stock
      t.string :stock_symbol
      t.boolean :status
      t.belongs_to :user

      t.timestamps
    end
  end
end

