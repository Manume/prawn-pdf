class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :customer_name
      t.string :item_name
      t.string :item_price
      t.integer :item_qty

      t.timestamps
    end
  end
end
