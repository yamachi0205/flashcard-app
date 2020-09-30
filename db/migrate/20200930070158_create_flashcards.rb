class CreateFlashcards < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcards do |t|
      t.string  :name,       null: false
      t.integer :user_id,    foring_key: true
      t.integer :word_id,    foring_key: true
      t.timestamps
    end
  end
end
