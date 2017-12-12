class CreateMatchGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :match_genres do |t|
      t.references :match, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
