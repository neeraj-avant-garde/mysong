class CreateSongQueueUsers < ActiveRecord::Migration
  def change
    create_table :song_queue_users do |t|
      t.integer :song_queue_id, null: false
      t.integer :user_id, null: false
      t.boolean :like, default: false
      t.boolean :dislike, default: false

      t.timestamps
    end
  end
end
