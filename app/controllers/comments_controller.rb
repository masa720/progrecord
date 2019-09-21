class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]
  before_action :set_negotiation

  def create
    @comment = @negotiation.comments.new(comment_params)
    # binding.pry
    if @comment.save
      redirect_to negotiation_path(@negotiation.id)
    else
      render :new
    end
  end

  def destroy
    if @comment.user_id == current_user.id
      if @comment.destroy
        redirect_to negotiation_path(@negotiation.id)
      else
        render :edit
      end
    end
  end

  private
  def comment_params
    params.permit(:body).merge(user_id: current_user.id)
  end

  def set_negotiation
    @negotiation = Negotiation.find(params[:negotiation_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
