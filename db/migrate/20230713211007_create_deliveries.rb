class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.string :lat
      t.string :lng
      t.string :day
      t.string :sign
      t.string :client_fullname
      t.string :client_phone
      t.string :client_email
      t.datetime :event_datetime

      t.timestamps
    end
  end
end
