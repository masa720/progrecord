class NegotiationsController < ApplicationController
  before_action :set_negotiation, only: [:show, :edit, :update, :destroy]

  def index
    @negotiations = Negotiation.where(params[:id]).order(created_at: "DESC").limit(3)
    @customers = Customer.where(params[:id]).order(created_at: "DESC").limit(3)
    @importants = Negotiation.includes(:user).where(importance: "★★★★").or(Negotiation.includes(:user).where(importance: "★★★★★")).order(created_at: "DESC").limit(3)
  end

  def show
    @continuations = @negotiation.continuations.includes(:user)
    @comments = @negotiation.comments.includes(:user)
  end

  def new
    @negotiation = Negotiation.new
  end

  def create
    @negotiation = Negotiation.new(nego_params)
    if @negotiation.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @negotiation.update(nego_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @negotiation.destroy
      redirect_to  root_path
    else
      render :index
    end
  end

  def negotiation_list
    @negotiations = Negotiation.where(params[:id])
    @search = Negotiation.ransack(params[:q])
    @result = @search.result
    @customers = Customer.where(params[:id])
    @users = User.where(params[:id])
  end

  private
  def nego_params
    params.require(:negotiation).permit(:customer_id, :user_id, :year, :month, :day, :title, :body, :content_id, :importance, :department_id, :way, :next_nego, :next_year, :next_month, :next_day)
  end

  def set_negotiation
    @negotiation = Negotiation.find(params[:id])
  end
end
