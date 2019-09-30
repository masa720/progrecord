class NegotiationsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :negotiation_list]
  before_action :set_negotiation, only: [:show, :edit, :update, :destroy]

  def index
    @negotiations = Negotiation.where(params[:id]).order(created_at: "DESC").limit(3)
    @customers = Customer.where(params[:id]).order(created_at: "DESC").limit(3)
    # @exist = Notification.where(visited_id: current_user.id,checked: '0').count
    @importants = Negotiation.includes(:user).where(importance: "★★★★").or(Negotiation.includes(:user).where(importance: "★★★★★")).order(created_at: "DESC").limit(3)
    if user_signed_in?
      @exist = Notification.where(visited_id: current_user.id,checked: '0').count
    end
  end

  def notifications
    @notifications = current_user.passive_notifications.page(params[:page]).per(10)
    @notifications.where(checked: false).each do |notification|
      notification.update_attributes(checked: true)
    end 
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

  def count
    @exist = Notification.where(checked: '0').count
  end

  private
  def nego_params
    params.require(:negotiation).permit(:customer_id, :user_id, :year, :month, :day, :title, :body, :content_id, :importance, :department_id, :way, :next_nego, :next_year, :next_month, :next_day)
  end

  def set_negotiation
    @negotiation = Negotiation.find(params[:id])
  end
end
