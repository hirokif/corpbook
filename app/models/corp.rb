class Corp < ActiveRecord::Base
  attr_accessible :corp_add, :corp_fax, :corp_name, :corp_no, :corp_tel

  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  private
    #このcorpを参照しているline_itemが無いことを確認する
    def ensure_not_referenced_by_any_line_item
      if line_item.empty
        return true
      else
        errors.add(:base, '品目が存在します')
        return false
      end
    end

end
