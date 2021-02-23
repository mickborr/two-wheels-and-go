class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.text :description
      t.decimal :cost_per_day
      t.string :category
      t.boolean :availability
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
