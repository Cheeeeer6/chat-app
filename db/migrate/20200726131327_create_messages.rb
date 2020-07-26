class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :user, null: false, foreign_kay: true
      t.references :room, null: false, foreign_kay: true
      t.timestamps
    end
  end
end
