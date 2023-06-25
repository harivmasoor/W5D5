class CreateQuestions < ActiveRecord::Migration[6.1]
    def change
      create_table :questions do |t|
        t.references :poll, null: false, foreign_key: true
        t.string :text, null: false
  
        t.timestamps
      end
    end
  end