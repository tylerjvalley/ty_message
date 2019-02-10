class ChatroomController < ApplicationController

  def index
    @message = Message.find(message_params[:id])
  end





  private

  def message_params

  end

end
