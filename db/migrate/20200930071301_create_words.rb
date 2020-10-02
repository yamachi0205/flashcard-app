class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string  :name,            null: false
      t.string  :meaning,         null: false
      t.integer :flashcard_id,    foring_key: true
      t.timestamps
    end
  end
end
