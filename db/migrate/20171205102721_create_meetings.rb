class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.references :match, foreign_key: true
      t.date :date
      t.string :title
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
