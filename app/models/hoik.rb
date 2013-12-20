class Hoik < ActiveRecord::Base
  attr_accessible :corp_no, :egr_bb, :egr_fr, :egr_or, :egr_sr, :mr, :pc, :pp, :toi_no, :note

  belongs_to :corp, :foreign_key => 'corp_no'
  belongs_to :toi, :foreign_key => 'toi_no'
end
