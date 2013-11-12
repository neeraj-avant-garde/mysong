class CreateSongQueueUsers < ActiveRecord::Migration
  def change
    create_table :song_queue_users do |t|
      t.belongs_to :user
      t.belongs_to :song_queue
      t.boolean :like, default: false
      t.boolean :dislike, default: false

      t.timestamps
    end
  end
end
