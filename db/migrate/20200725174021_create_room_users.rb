class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.integer :user, null: false, foreign: true
      t.integer :room, null: false, foreign: true
      t.timestamps
    end
  end
end
