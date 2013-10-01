class CreateHois < ActiveRecord::Migration
  def change
    create_table :hois do |t|
      t.integer :corp_no
      t.boolean :pc
      t.integer :toi_id
      t.integer :pp
      t.integer :mr
      t.integer :egr_fr
      t.integer :egr_bb
      t.integer :egr_sr
      t.integer :egr_or

      t.timestamps
    end
  end
end
