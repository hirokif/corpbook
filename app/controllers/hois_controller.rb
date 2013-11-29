class HoisController < ApplicationController
  def index
    @hois = Hoi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grps }
    end
  end

end
