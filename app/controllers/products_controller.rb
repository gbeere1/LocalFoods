class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
   #before_action :authorise, only: [:show, :edit, :update, :destroy]
  before_action :supplierauthorise, only: [:edit, :update, :destroy]
  
=======
   
  before_action :authorise, only: [:show, :edit, :update, :destroy]
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end
<<<<<<< HEAD
  
  def search
	@products = Product.search params[:query]
	unless @products.empty?
		render 'index'
	else	
		flash[:notice] = '*****No Records Match That Search*****'
		render 'index'
	end
  end
=======
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
<<<<<<< HEAD
        format.html { redirect_to @product, notice: '******Product was successfully created.******' }
=======
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
<<<<<<< HEAD
        format.html { redirect_to @product, notice: '******Product was successfully updated.******' }
=======
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
<<<<<<< HEAD
      format.html { redirect_to products_url, notice: '******Product was successfully destroyed.******' }
=======
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
<<<<<<< HEAD
      params.require(:product).permit(:product_name, :supplier_id, :price, :quantity, :image, :attachment)
=======
      params.require(:product).permit(:product_name, :supplier_id, :price, :quantity, :image)
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
    end
end
