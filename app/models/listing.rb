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

class Listing < ApplicationRecord
  include ImageUploader::Attachment.new(:photo)

  belongs_to :user
  enum status: { owned: 0, wanted: 1 }

  def self.search(search)
    where("name LIKE ? OR description LIKE ? OR category_id LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
