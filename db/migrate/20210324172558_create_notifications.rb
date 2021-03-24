class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.string :sku
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
