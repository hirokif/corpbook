class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :corp_id
  belongs_to :corp
  belongs_to :cart
end
