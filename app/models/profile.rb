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

class Profile < ApplicationRecord
  include ImageUploader::Attachment.new(:photo)

  belongs_to :user

  # Full Name (First Name and Last Name)
  def full_name
    "#{first_name} #{last_name}"
  end

end
