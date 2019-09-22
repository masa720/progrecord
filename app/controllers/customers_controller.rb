class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.where(params[:id])
    # binding.pry
    @cs_search = Customer.ransack(params[:q])
    @cs_result = @cs_search.result
    # .includes(:user).page(params[:page]).per(5).order("created_at DESC")
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

  def edit
  end

  def update
    if @customer.update(new_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @customer.destroy
      redirect_to  root_path
    else
      render :index
    end
  end

  private
  def new_params
    params.require(:customer).permit(:name, :category, :person, :position, :tel, :mobile, :fax, :email, :product, :remarks)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end
end
