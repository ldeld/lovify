class SetDefaultToRdv < ActiveRecord::Migration[5.0]
  def change
    change_column :rdvs, :accepted, :boolean, default: false
  end
end
