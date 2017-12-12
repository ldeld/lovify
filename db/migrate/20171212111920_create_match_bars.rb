class CreateMatchBars < ActiveRecord::Migration[5.0]
  def change
    create_table :match_bars do |t|
      t.references :bar, foreign_key: true
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
