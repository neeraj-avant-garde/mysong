class CreateHostUsers < ActiveRecord::Migration
  def change
    create_table :host_users do |t|
      t.belongs_to :host
      t.belongs_to :user
      t.string :activity, null: false, default: 'visit'
      t.string :user_status

      t.timestamps
    end
  end
end
