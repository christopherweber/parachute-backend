class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :airline
      t.string :cityFrom
      t.string :cityTo
      t.string :fly_duration
      t.string :price
      t.integer :dTime
      t.integer :aTime
      t.string :deep_link
      t.string :flight_id

      t.timestamps
    end
  end
end
