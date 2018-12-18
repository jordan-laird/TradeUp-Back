class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :shares_purchased
      t.string :purchased_price
      t.boolean :active
      t.belongs_to :user
      t.belongs_to :stock

      t.timestamps
    end
  end
end
