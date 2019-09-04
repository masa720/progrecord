class NegotiationsController < ApplicationController
  def index
  end

  def new
    @negotiation = Negotiation.new
  end

  def create
    # binding.pry
    @negotiation = Negotiation.new(new_params)
    if @negotiation.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def new_params
    params.require(:negotiation).permit(:customer_id, :year, :month, :day, :title, :body, :content, :importance, :department, :way, :next_nego, :next_year, :next_month, :next_day).merge(user_id: current_user.id)
  end
end
