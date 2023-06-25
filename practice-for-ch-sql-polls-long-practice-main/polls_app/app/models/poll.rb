class CreatePolls < ActiveRecord::Migration[6.1]
    def change
      create_table :polls do |t|
        t.references :author, null: false, foreign_key: { to_table: :users }
        t.string :title, null: false
  
        t.timestamps
      end
    end
  end