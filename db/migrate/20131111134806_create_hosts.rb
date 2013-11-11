class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :guid, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.string :address, null: false
      t.string :area
      t.string :city, null: false
      t.string :verification
      t.string :longitude
      t.string :latitude
      t.datetime :subscription_end
      t.integer :max_requests, null: false
      t.integer :max_queue, null: false
      t.decimal :proximity, null: false
      t.string :facebook
      t.string :twitter
      t.string :slogan

      t.timestamps
    end
    add_index :hosts, :guid, unique: true
    add_index :hosts, :email, unique: true
  end
end
