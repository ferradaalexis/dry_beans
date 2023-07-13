class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.references :locationable, polymorphic: true, null: false
      t.references :route

      t.timestamps
    end
  end
end
