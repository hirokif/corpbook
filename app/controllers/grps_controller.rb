class GrpsController < ApplicationController
  # GET /grps
  # GET /grps.json
  def index
    @grps = Grp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grps }
    end
  end

  # GET /grps/1
  # GET /grps/1.json
  def show
    @grp = Grp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grp }
    end
  end

  # GET /grps/new
  # GET /grps/new.json
  def new
    @grp = Grp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grp }
    end
  end

  # GET /grps/1/edit
  def edit
    @grp = Grp.find(params[:id])
  end

  # POST /grps
  # POST /grps.json
  def create
    @grp = Grp.new(params[:grp])

    respond_to do |format|
      if @grp.save
        format.html { redirect_to @grp, notice: 'Grp was successfully created.' }
        format.json { render json: @grp, status: :created, location: @grp }
      else
        format.html { render action: "new" }
        format.json { render json: @grp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grps/1
  # PUT /grps/1.json
  def update
    @grp = Grp.find(params[:id])

    respond_to do |format|
      if @grp.update_attributes(params[:grp])
        format.html { redirect_to @grp, notice: 'Grp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grps/1
  # DELETE /grps/1.json
  def destroy
    @grp = Grp.find(params[:id])
    @grp.destroy

    respond_to do |format|
      format.html { redirect_to grps_url }
      format.json { head :no_content }
    end
  end
end
