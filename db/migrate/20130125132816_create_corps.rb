class CreateCorps < ActiveRecord::Migration
  def change
    create_table :corps do |t|
      t.integer :corp_no
      t.string :corp_name
      t.string :corp_add
      t.string :corp_tel
      t.string :corp_fax

      t.timestamps
    end
  end
end
