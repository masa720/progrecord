class PinsController < ApplicationController
  def create
    @pin = Pin.new(user_id: current_user.id, notification_id: params[:notification_id])

    respond_to do |format|
      if @pin.save
        format.html { redirect_to :back, notice: 'Pin was successfully created.' }
        format.json { render json: {status: 'success', pin: @pin, pined: true} }
      else
        format.html { render :new }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end
end
