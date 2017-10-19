class ConversationsController < ApplicationController
  before_action :set_conversation, only: [:show, :edit, :update, :destroy]

  # GET /conversations
  # GET /conversations.json
  def index
    @conversations = current_user.conversations.joins(:messages).distinct
  end

  # GET /conversations/1
  # GET /conversations/1.json
  def show
    @message = Message.new
  end

  # POST /conversations
  # POST /conversations.json
  def create
    if current_user.id == conversation_params[:user_id].to_i
      redirect_back fallback_location: listings_path, notice: 'This listing belongs to you.'
    elsif existing_conversation = Conversation.between(current_user.id, conversation_params[:user_id]).first
      redirect_to conversation_path(existing_conversation.id)
    else
      @conversation = Conversation.new
      current_user_participation = @conversation.participations.build(user: current_user)
      other_participation = @conversation.participations.build(user: User.find_by(conversation_params[:user_id]))

      respond_to do |format|
        if @conversation.save && current_user_participation.save && other_participation.save
          format.html { redirect_to @conversation, notice: 'Conversation was successfully created.' }
          format.json { render :show, status: :created, location: @conversation }
        else
          format.html { render :new }
          format.json { render json: @conversation.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conversation
      @conversation = Conversation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conversation_params
      params.require(:conversation).permit(:user_id)
    end
end
