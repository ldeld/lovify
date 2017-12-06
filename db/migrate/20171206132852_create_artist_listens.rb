class CreateArtistListens < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_listens do |t|
      t.references :user, index: true, foreign_key: true
      t.references :artist, index: true, foreign_key: true
      t.integer :rank
      t.timestamps
    end
  end
end
