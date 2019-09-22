class CntCommentsController < ApplicationController
  before_action :set_ccomment, only: [:destroy]
  before_action :set_negotiation
  before_action :set_continuation

  def new
    @cnt_comment = CntComment.new
  end

  def create
    if CntComment.create(cntcomment_params)
      # binding.pry
      redirect_to negotiation_continuation_path(@negotiation.id,@continuation.id)
    else
      render :new
    end
  end

  def destroy
    if @cnt_comment.user_id == current_user.id
      if @cnt_comment.destroy
        redirect_to negotiation_continuation_path(@negotiation.id,@continuation.id)
      else
        render :edit
      end
    end
  end

  private
  def cntcomment_params
    params.permit(:body).merge(user_id: current_user.id, negotiation_id: @negotiation.id, continuation_id: @continuation.id)
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