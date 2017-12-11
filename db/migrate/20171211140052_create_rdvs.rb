class CreateRdvs < ActiveRecord::Migration[5.0]
  def change
    create_table :rdvs do |t|
      t.references :match, foreign_key: true
      t.references :bar, foreign_key: true

      t.timestamps
    end
  end
end
