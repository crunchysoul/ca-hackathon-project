# == Schema Information
#
# Table name: listings
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  user_id     :integer
#  price       :decimal(, )
#  photo_data  :text
#  category_id :string
#  item_type   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  status      :integer
#

require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
