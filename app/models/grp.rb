class Grp < ActiveRecord::Base
  attr_accessible :grp_name, :grp_no
	
	has_many :tois, :foreign_key => 'grp_no'

	#accepts_nested_attributes_for :tois
	#attr_accessible :tois_attributes
end
