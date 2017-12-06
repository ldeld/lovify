class CreateTrackListens < ActiveRecord::Migration[5.0]
  def change
    create_table :track_listens do |t|
      t.references :user, foreign_key: true
      t.references :track, foreign_key: true
      t.integer :rank

      t.timestamps
    end
  end
end
