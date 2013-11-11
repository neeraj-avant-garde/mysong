class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :host_id, null: false
      t.integer :user_id, null: false
      t.string :text, null: false
      t.string :created_by, null: false, default: 'host'

      t.timestamps
    end
  end
end
