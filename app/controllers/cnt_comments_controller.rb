class CntCommentsController < ApplicationController
  before_action :set_ccomment, only: [:edit, :update, :destroy]
  before_action :set_negotiation
  before_action :set_continuation

  def new
    @cnt_comment = CntComment.new
  end

  def create
    if CntComment.create(cntcomment_params)
      # binding.pry
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cnt_comment.update(cntcomment_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @cnt_comment.destroy
      redirect_to  root_path
    else
      render :edit
    end
  end

  private
  def cntcomment_params
    params.require(:cnt_comment).permit(:body).merge(user_id: current_user.id, negotiation_id: @negotiation.id, continuation_id: @continuation.id)
  end

  def set_negotiation
    @negotiation = Negotiation.find(params[:negotiation_id])
  end

  def set_continuation
    @continuation = Continuation.find(params[:continuation_id])
  end

  def set_ccomment
    @cnt_comment = CntComment.find(params[:id])
  end
end
