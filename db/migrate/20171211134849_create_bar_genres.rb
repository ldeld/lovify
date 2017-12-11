class CreateBarGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :bar_genres do |t|
      t.references :bar, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
