class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  before_action :supplierauthorise, only: [:edit, :update, :destroy]
=======

>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
  # GET /suppliers
  # GET /suppliers.json
  def index
    @suppliers = Supplier.all
  end

  # GET /suppliers/1
  # GET /suppliers/1.json
  def show
  end

  # GET /suppliers/new
  def new
    @supplier = Supplier.new
  end

  # GET /suppliers/1/edit
  def edit
  end

  # POST /suppliers
  # POST /suppliers.json
  def create
    @supplier = Supplier.new(supplier_params)

    respond_to do |format|
      if @supplier.save
<<<<<<< HEAD
        format.html { redirect_to @supplier, notice: '*****Supplier was successfully created.*****' }
=======
        format.html { redirect_to @supplier, notice: 'Supplier was successfully created.' }
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
        format.json { render :show, status: :created, location: @supplier }
      else
        format.html { render :new }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suppliers/1
  # PATCH/PUT /suppliers/1.json
  def update
    respond_to do |format|
      if @supplier.update(supplier_params)
<<<<<<< HEAD
        format.html { redirect_to @supplier, notice: '*****Supplier was successfully updated.*****' }
=======
        format.html { redirect_to @supplier, notice: 'Supplier was successfully updated.' }
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
        format.json { render :show, status: :ok, location: @supplier }
      else
        format.html { render :edit }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suppliers/1
  # DELETE /suppliers/1.json
  def destroy
    @supplier.destroy
    respond_to do |format|
      format.html { redirect_to suppliers_url, notice: 'Supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_params
<<<<<<< HEAD
      params.require(:supplier).permit(:supplier_name, :area_id, :password, :password_confirmation, :image, :attachment)
=======
      params.require(:supplier).permit(:supplier_name, :area_id, :password_digest, :image)
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
    end
end
