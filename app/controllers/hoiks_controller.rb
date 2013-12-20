class HoiksController < ApplicationController
  def index
    @corp = Corp.find(params[:corp_id])
    @hoiks = @corp.hoiks

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hoiks }
    end
  end

# GET /hoiks/1
  # GET /hoiks/1.json
  def show
    @hoik = Hoik.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hoik }
    end
  end

  # GET /hoiks/new
  # GET /hoiks/new.json
  def new
    @hoik = Hoik.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hoik }
    end
  end

  # GET /hoiks/1/edit
  def edit
    @hoik = Hoik.find(params[:id])
  end

  # POST /hoiks
  # POST /hoiks.json
  def create
    @corp = Corp.find(params[:corp_no])
    @hoik = @corp.hoiks.create(params[:hoik])
    redirect_to corp_path(@corp.id)
#   respond_to do |format|
#     if @hoik.save
#       format.html { redirect_to @hoik, notice: 'Hoi was successfully created.' }
#       format.json { render json: @hoik, status: :created, location: @hoik }
#     else
#       format.html { render action: "new" }
#       format.json { render json: @hoik.errors, status: :unprocessable_entity }
#     end
#   end
  end

  # PUT /hoiks/1
  # PUT /hoiks/1.json
  def update
    @hoik = Hoik.find(params[:id])

    respond_to do |format|
      if @hoik.update_attributes(params[:hoik])
        format.html { redirect_to @hoik, notice: 'Hoi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hoik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoiks/1
  # DELETE /hoiks/1.json
  def destroy
    @hoik = Hoik.find(params[:id])
    @hoik.destroy

    respond_to do |format|
      format.html { redirect_to hoiks_url }
      format.json { head :no_content }
    end
  end

end
