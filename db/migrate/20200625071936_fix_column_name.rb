class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :doses, :amount, :description
  end
end
