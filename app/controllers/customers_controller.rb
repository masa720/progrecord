class CustomersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def create
    # binding.pry
    @customer = Customer.new(new_params)
    if @customer.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def new_params
    params.require(:customer).permit(:name, :type, :person, :position, :tel, :mobile, :fax, :email, :product, :remarks)
  end


end
