class Toi < ActiveRecord::Base
  attr_accessible :toi_name, :toi_no, :grp_no

  #id以外の外部キーを設定
  belongs_to :grp, :foreign_key => 'grp_no'
  has_many :hoiks, :foreign_key => 'toi_no'
end
