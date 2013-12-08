class HoisController < ApplicationController
  def index
    @hois = Hoi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hois }
    end
  end

# GET /hois/1
  # GET /hois/1.json
  def show
    @hoi = Hoi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hoi }
    end
  end

  # GET /hois/new
  # GET /hois/new.json
  def new
    @hoi = Hoi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hoi }
    end
  end

  # GET /hois/1/edit
  def edit
    @hoi = Hoi.find(params[:id])
  end

  # POST /hois
  # POST /hois.json
  def create
    @corp = Corp.find(params[:corp_no])
    @hoi = @corp.hois.create(params[:hoi])
    redirect_to corp_path(@corp.id)
#   respond_to do |format|
#     if @hoi.save
#       format.html { redirect_to @hoi, notice: 'Hoi was successfully created.' }
#       format.json { render json: @hoi, status: :created, location: @hoi }
#     else
#       format.html { render action: "new" }
#       format.json { render json: @hoi.errors, status: :unprocessable_entity }
#     end
#   end
  end

  # PUT /hois/1
  # PUT /hois/1.json
  def update
    @hoi = Hoi.find(params[:id])

    respond_to do |format|
      if @hoi.update_attributes(params[:hoi])
        format.html { redirect_to @hoi, notice: 'Hoi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hoi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hois/1
  # DELETE /hois/1.json
  def destroy
    @hoi = Hoi.find(params[:id])
    @hoi.destroy

    respond_to do |format|
      format.html { redirect_to hois_url }
      format.json { head :no_content }
    end
  end

end
