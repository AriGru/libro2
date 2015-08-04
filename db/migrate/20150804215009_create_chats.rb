class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text :comment
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
