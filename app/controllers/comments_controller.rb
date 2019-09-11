class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]
  before_action :set_negotiation

  def new
    @comment = Comment.new
  end

  def create
    if Comment.create(comment_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @comment.destroy
      redirect_to  root_path
    else
      render :edit
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id, negotiation_id: @negotiation.id)
  end

  def set_negotiation
    @negotiation = Negotiation.find(params[:negotiation_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
