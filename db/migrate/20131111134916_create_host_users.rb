class CreateHostUsers < ActiveRecord::Migration
  def change
    create_table :host_users do |t|
      t.belongs_to :host, null: false
      t.belongs_to :user, null: false
      t.string :activity, null: false, default: 'visit'
      t.string :user_status, null: false, default: 'active'

      t.timestamps
    end
  end
end
