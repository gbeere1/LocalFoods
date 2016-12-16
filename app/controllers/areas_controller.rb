class AreasController < ApplicationController
  before_action :set_area, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  #before_action :authorise, only: [:show, :edit, :update, :destroy]
  before_action :supplierauthorise, only: [:edit, :update, :destroy]
=======
  before_action :authorise, only: [:show, :edit, :update, :destroy]

>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
  
  
  # GET /areas
  # GET /areas.json
  def index
    @areas = Area.all
  end

  # GET /areas/1
  # GET /areas/1.json
  def show
  end

  # GET /areas/new
  def new
    @area = Area.new
  end

  # GET /areas/1/edit
  def edit
  end

  # POST /areas
  # POST /areas.json
  def create
    @area = Area.new(area_params)

    respond_to do |format|
      if @area.save
<<<<<<< HEAD
        format.html { redirect_to @area, notice: '******Area was successfully created.******' }
=======
        format.html { redirect_to @area, notice: 'Area was successfully created.' }
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
        format.json { render :show, status: :created, location: @area }
      else
        format.html { render :new }
        format.json { render json: @area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /areas/1
  # PATCH/PUT /areas/1.json
  def update
    respond_to do |format|
      if @area.update(area_params)
<<<<<<< HEAD
        format.html { redirect_to @area, notice: '******Area was successfully updated.******' }
=======
        format.html { redirect_to @area, notice: 'Area was successfully updated.' }
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
        format.json { render :show, status: :ok, location: @area }
      else
        format.html { render :edit }
        format.json { render json: @area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /areas/1
  # DELETE /areas/1.json
  def destroy
    @area.destroy
    respond_to do |format|
<<<<<<< HEAD
      format.html { redirect_to areas_url, notice: '******Area was successfully destroyed.******' }
=======
      format.html { redirect_to areas_url, notice: 'Area was successfully destroyed.' }
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @area = Area.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_params
<<<<<<< HEAD
      params.require(:area).permit(:area_name, :postcode, :latitude, :longitude)
=======
      params.require(:area).permit(:area_name, :postcode)
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
    end
end
