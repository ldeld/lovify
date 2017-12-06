class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :popularity
      t.string :album

      t.timestamps
    end
  end
end
