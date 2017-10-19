# == Schema Information
#
# Table name: participations
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  conversation_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :conversation
end
