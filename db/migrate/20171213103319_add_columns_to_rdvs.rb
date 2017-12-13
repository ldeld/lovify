class AddColumnsToRdvs < ActiveRecord::Migration[5.0]
  def change
    add_reference :rdvs, :asker
    add_reference :rdvs, :receiver
    add_column :rdvs, :accepted, :boolean
  end
end
