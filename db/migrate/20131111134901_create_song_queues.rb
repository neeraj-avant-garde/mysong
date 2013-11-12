class CreateSongQueues < ActiveRecord::Migration
  def change
    create_table :song_queues do |t|
      t.belongs_to :host
      t.belongs_to :user
      t.belongs_to :song
      t.string :message
      t.boolean :message_approved, default: true
      t.string :priority, null: false, default: 'normal'
      t.string :status, null: false, default: 'waiting'

      t.timestamps
    end
  end
end
