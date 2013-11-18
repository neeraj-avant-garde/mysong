class CreateHostSessions < ActiveRecord::Migration
  def change
    create_table :host_sessions do |t|
      t.integer :host_id, null: false
      t.string :host_session_id, null: false
      t.boolean :is_active, null: false, default: true

      t.timestamps
    end
    add_index :host_sessions, :host_session_id, unique: true
  end
end
