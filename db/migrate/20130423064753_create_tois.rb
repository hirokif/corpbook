class CreateTois < ActiveRecord::Migration
  def change
    create_table :tois do |t|
      t.integer :toi_no
      t.string :toi_name

      t.timestamps
    end
  end
end
