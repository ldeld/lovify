class CreateListenings < ActiveRecord::Migration[5.0]
  def change
    create_table :listenings do |t|
      t.references :user, foreign_key: true
      t.float :ratio
      t.string :type
      t.string :name

      t.timestamps
    end
  end
end
