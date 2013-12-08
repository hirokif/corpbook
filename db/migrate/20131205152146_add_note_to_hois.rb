class AddNoteToHois < ActiveRecord::Migration
  def change
    add_column :hois, :note, :text
  end
end
