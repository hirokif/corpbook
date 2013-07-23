class Grp < ActiveRecord::Base
  attr_accessible :grp_name, :grp_no
	
	has_many :tois

	#accepts_nested_attributes_for :tois
	#attr_accessible :tois_attributes
end
