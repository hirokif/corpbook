class AddColumnTois < ActiveRecord::Migration
  def up
		add_column :tois, :grp_id, :integer
  end

  def down
		remove_column :tois, :grp_id, :integer
  end
end
