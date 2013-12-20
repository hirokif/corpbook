class HoiksController < ApplicationController
  def index
    @corp = Corp.find(params[:corp_id])
    @hoiks = @corp.hoiks

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hois }
    end
  end

# GET /hois/1
  # GET /hois/1.json
  def show
    @hoik = Hoik.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hoi }
    end
  end

  # GET /hois/new
  # GET /hois/new.json
  def new
    @hoik = Hoik.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hoi }
    end
  end

  # GET /hois/1/edit
  def edit
    @hoik = Hoik.find(params[:id])
  end

  # POST /hois
  # POST /hois.json
  def create
    @corp = Corp.find(params[:corp_no])
    @hoik = @corp.hoiks.create(params[:hoi])
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
    @hoik = Hoik.find(params[:id])

    respond_to do |format|
      if @hoik.update_attributes(params[:hoi])
        format.html { redirect_to @hoik, notice: 'Hoi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hoik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hois/1
  # DELETE /hois/1.json
  def destroy
    @hoik = Hoik.find(params[:id])
    @hoik.destroy

    respond_to do |format|
      format.html { redirect_to hois_url }
      format.json { head :no_content }
    end
  end

end
