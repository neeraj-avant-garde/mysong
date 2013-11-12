class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :host
      t.belongs_to :user
      t.string :text, null: false
      t.string :created_by, null: false, default: 'host'

      t.timestamps
    end
  end
end
