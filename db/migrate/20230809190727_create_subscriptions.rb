class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.decimal :price, precision: 14, scale: 2
      t.text :benefits
      t.string :valid
      t.timestamps
    end
  end
end
