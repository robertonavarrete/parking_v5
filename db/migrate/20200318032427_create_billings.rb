class CreateBillings < ActiveRecord::Migration[5.2]
  def change
    create_table :billings do |t|
      t.integer :amount
      t.string :code
      t.string :currency
      t.string :payment_method
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
