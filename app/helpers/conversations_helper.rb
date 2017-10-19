module ConversationsHelper
  def other_participant(conversation)
    conversation.users.find { |user| user != current_user }.email
  end
end
