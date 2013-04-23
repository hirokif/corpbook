class ToisController < ApplicationController
  # GET /tois
  # GET /tois.json
  def index
    @tois = Toi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tois }
    end
  end

  # GET /tois/1
  # GET /tois/1.json
  def show
    @toi = Toi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @toi }
    end
  end

  # GET /tois/new
  # GET /tois/new.json
  def new
    @toi = Toi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @toi }
    end
  end

  # GET /tois/1/edit
  def edit
    @toi = Toi.find(params[:id])
  end

  # POST /tois
  # POST /tois.json
  def create
    @toi = Toi.new(params[:toi])

    respond_to do |format|
      if @toi.save
        format.html { redirect_to @toi, notice: 'Toi was successfully created.' }
        format.json { render json: @toi, status: :created, location: @toi }
      else
        format.html { render action: "new" }
        format.json { render json: @toi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tois/1
  # PUT /tois/1.json
  def update
    @toi = Toi.find(params[:id])

    respond_to do |format|
      if @toi.update_attributes(params[:toi])
        format.html { redirect_to @toi, notice: 'Toi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @toi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tois/1
  # DELETE /tois/1.json
  def destroy
    @toi = Toi.find(params[:id])
    @toi.destroy

    respond_to do |format|
      format.html { redirect_to tois_url }
      format.json { head :no_content }
    end
  end
end
