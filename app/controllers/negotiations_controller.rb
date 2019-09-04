class NegotiationsController < ApplicationController
  before_action :set_negotiation, only: [:show, :edit, :update, :destroy]

  def index
    @negotiations = Negotiation.where(params[:id])
  end

  def new
    @negotiation = Negotiation.new
  end

  def create
    # binding.pry
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

  private
  def nego_params
    params.require(:negotiation).permit(:customer_id, :year, :month, :day, :title, :body, :content, :importance, :department, :way, :next_nego, :next_year, :next_month, :next_day).merge(user_id: current_user.id)
  end

  def set_negotiation
    @negotiation = Negotiation.find(params[:id])
  end
end
