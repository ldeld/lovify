class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.float :score
      t.references :user_1
      t.references :user_2
      t.integer :asker
      t.integer :receiver

      t.timestamps
    end
  end
end
