class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :authorise, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
<<<<<<< HEAD
	@customer = Customer.find(params[:id])
=======
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
<<<<<<< HEAD
        #Usermailer.welcome(@customer).deliver_now
		format.html { redirect_to @customer, notice: '******Customer was successfully created.******' }
        format.json { render :show, status: :created, location: @customer }
		
=======
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
<<<<<<< HEAD
end
=======
  end
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
<<<<<<< HEAD
        format.html { redirect_to @customer, notice: '******Customer was successfully updated.******' }
=======
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
<<<<<<< HEAD
      format.html { redirect_to customers_url, notice: '******Customer was successfully destroyed.******' }
=======
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
<<<<<<< HEAD
      params.require(:customer).permit(:customer_name, :address, :area, :phone, :email, :password, :password_confirmation, :latitude, :longitude, :attachment)
=======
      params.require(:customer).permit(:customer_name, :address, :area, :phone, :email, :password, :password_confirmation)
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
    end
end
