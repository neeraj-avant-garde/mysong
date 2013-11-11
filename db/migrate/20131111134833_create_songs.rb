class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :host_id, null: false
      t.string :title, null: false
      t.string :artist
      t.string :album
      t.integer :length, null: false, default: 60

      t.timestamps
    end
  end
end
