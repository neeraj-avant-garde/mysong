class CreateHostUsers < ActiveRecord::Migration
  def change
    create_table :host_users do |t|
      t.string :activity, null: false, default: 'visit'
      t.boolean :old_visit, null: false, default: false

      t.timestamps
    end
  end
end
