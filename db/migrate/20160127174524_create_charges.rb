class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.references :user
      t.boolean :paid
      t.decimal :amount
      t.string :currency
      t.boolean :refunded
      t.boolean :disputed

      t.timestamps null: false
    end
  end
end
