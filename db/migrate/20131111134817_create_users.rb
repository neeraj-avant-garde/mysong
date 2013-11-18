class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :app_id, null: false
      t.string :phone, null: false
      t.string :verification, null: false
      t.string :longitude
      t.string :latitude
      t.string :privilege, null: false, default: 'normal'
      t.string :device
      t.string :avatar

      t.timestamps
    end
    #add_index :users, :app_id,  unique: true
    add_index :users, :phone, unique: true
  end
end
