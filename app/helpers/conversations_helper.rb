module ConversationsHelper
  def other_participant_name(conversation)
    user_profile = conversation.users.find { |user| user != current_user }.profile
    "#{user_profile.first_name} #{user_profile.last_name}"
  end
end
