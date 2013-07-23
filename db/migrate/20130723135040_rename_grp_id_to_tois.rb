class RenameGrpIdToTois < ActiveRecord::Migration
  def up
  	rename_column :tois, :grp_id, :grp_no
  end

  def down
  	rename_column :tois, :grp_no, :grp_id
  end
end
