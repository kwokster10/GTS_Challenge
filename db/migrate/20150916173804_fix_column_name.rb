class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :engines, :type, :bin_type
  end
end
