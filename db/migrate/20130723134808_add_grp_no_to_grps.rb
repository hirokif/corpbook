class AddGrpNoToGrps < ActiveRecord::Migration
  def change
    add_column :grps, :grp_no, :integer
  end
end
