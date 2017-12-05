class AddGenderToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :gender, :string
    add_column :users, :interested_in_men, :boolean
    add_column :users, :interested_in_women, :boolean
  end
end
