class RenameHoiToHoik < ActiveRecord::Migration
  def up
    rename_table :hois, :hoiks
  end

  def down
    rename_table :hoiks, :hois
  end
end
