class ContinuationsController < ApplicationController
  before_action :set_continuation, only: [:show, :edit, :update, :destroy]
  before_action :set_negotiation

  def new
    @continuation = Continuation.new
  end

  def create
    if Continuation.create(conti_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @continuation.update(conti_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @continuation.destroy
      redirect_to  root_path
    else
      render :edit
    end
  end

  private
  def conti_params
    params.require(:continuation).permit(:text, :year, :month, :day, :way, :next_nego, :next_year, :next_month, :next_day).merge(user_id: current_user.id, negotiation_id: @negotiation.id)
  end

  def set_negotiation
    @negotiation = Negotiation.find(params[:negotiation_id])
  end

  def set_continuation
    @continuation = Continuation.find(params[:id])
  end
end
