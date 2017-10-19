# == Schema Information
#
# Table name: profiles
#
#  id             :integer          not null, primary key
#  first_name     :string
#  last_name      :string
#  date_of_birth  :date
#  city           :string
#  country        :string
#  contact_number :string
#  bio            :text
#  photo_data     :text
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
