class SimeiController < ApplicationController
  def index
    @corps = Corp.order(:corp_no)
  end
end
