class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 14, scale: 2
      t.integer :type
      t.string :location
      t.string :available_from
      t.integer :family_type
      t.boolean :sold, default: false, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
