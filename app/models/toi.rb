class Toi < ActiveRecord::Base
  attr_accessible :toi_name, :toi_no, :grp_id

	belongs_to :grp
end
