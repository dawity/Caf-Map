class CafeLocsController < ApplicationController
  before_action :set_cafe_loc, only: [:show, :edit, :update, :destroy]

  # GET /cafe_locs
  def index
     @cafe_locs = CafeLoc.all
      @hash = Gmaps4rails.build_markers(@cafe_locs) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.title user.title
    end
  end

  # GET /cafe_locs/1
  # GET /cafe_locs/1.json
  def show
  end

  # GET /cafe_locs/new
  def new
    @cafe_loc = CafeLoc.new
  end

  # GET /cafe_locs/1/edit
  def edit
  end

  # POST /cafe_locs
  # POST /cafe_locs.json
  def create
    @cafe_loc = CafeLoc.new(cafe_loc_params)

    respond_to do |format|
      if @cafe_loc.save
        format.html { redirect_to @cafe_loc, notice: 'Cafe loc was successfully created.' }
        format.json { render :show, status: :created, location: @cafe_loc }
      else
        format.html { render :new }
        format.json { render json: @cafe_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cafe_locs/1
  # PATCH/PUT /cafe_locs/1.json
  def update
    respond_to do |format|
      if @cafe_loc.update(cafe_loc_params)
        format.html { redirect_to @cafe_loc, notice: 'Cafe loc was successfully updated.' }
        format.json { render :show, status: :ok, location: @cafe_loc }
      else
        format.html { render :edit }
        format.json { render json: @cafe_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafe_locs/1
  # DELETE /cafe_locs/1.json
  def destroy
    @cafe_loc.destroy
    respond_to do |format|
      format.html { redirect_to cafe_locs_url, notice: 'Cafe loc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafe_loc
      @cafe_loc = CafeLoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cafe_loc_params
      params.require(:cafe_loc).permit(:latitude, :longitude, :address, :description, :title)
    end
end
