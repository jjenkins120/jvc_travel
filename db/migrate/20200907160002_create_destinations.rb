class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :country
      t.integer :population
      t.text :known_for

      t.timestamps
    end
  end
end
