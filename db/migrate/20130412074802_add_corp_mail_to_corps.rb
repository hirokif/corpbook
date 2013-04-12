class AddCorpMailToCorps < ActiveRecord::Migration
  def change
    add_column :corps, :corp_mail, :string
  end
end
