class RenameColumnToHois < ActiveRecord::Migration
  def up
  	rename_column :hois, :toi_id, :toi_no
  end

  def down
  	rename_column :hois, :toi_no, :toi_id 
  end
end
