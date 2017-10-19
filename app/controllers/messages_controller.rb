class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.conversation = Conversation.find(message_params[:conversation_id])
    @message.user = current_user
    redirect_to conversation_path(message_params[:conversation_id]) if @message.save
  end

  private
  
  def message_params
    params.require(:message).permit(:body, :conversation_id)
  end
end
