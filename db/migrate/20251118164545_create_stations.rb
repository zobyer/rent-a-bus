class CreateStations < ActiveRecord::Migration[8.0]
  def change
    create_table :stations do |t|
      t.string :name, null: false
      t.st_point :lonlat, geographic: true
      t.st_point :lonlatheight, geographic: true, has_z: true
      t.integer :status, null: false, default: 1

      t.timestamps
    end

    add_index :stations, :name
  end
end
