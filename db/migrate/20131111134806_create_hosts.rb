class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :app_id, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.string :avatar
      t.string :address
      t.string :area
      t.string :city
      t.integer :postcode
      t.string :state
      t.string :country
      t.string :verification
      t.string :longitude
      t.string :latitude
      t.datetime :subscription_end
      t.integer :max_requests, null: false, default: 5
      t.integer :max_queue, null: false, default: 10
      t.decimal :proximity, null: false, default: 100
      t.string :facebook
      t.string :twitter
      t.string :slogan
      t.string :device_id, null: false
      t.boolean :is_logged_in, null: false, default: true
      t.string :session_id

      t.timestamps
    end
    #add_index :hosts, :app_id, unique: true
    add_index :hosts, :email, unique: true
  end
end
