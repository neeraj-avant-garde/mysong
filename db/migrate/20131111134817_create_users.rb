class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :guid, null: false
      t.string :phone, null: false
      t.string :verification, null: false
      t.string :longitude
      t.string :latitude
      t.string :privilege, null: false, default: 'normal'

      t.timestamps
    end
    add_index :users, :guid, unique: true
    add_index :users, :phone, unique: true
  end
end
