class CreateVenta < ActiveRecord::Migration[7.1]
  def change
    create_table :venta do |t|
      t.date :date
      t.references :article, null: false, foreign_key: true
      t.float :sale_price

      t.timestamps
    end
  end
end
