class Listing < ApplicationRecord
  include ImageUploader::Attachment.new(:photo)

  belongs_to :user
end
