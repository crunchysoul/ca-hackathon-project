class Listing < ApplicationRecord
  include ImageUploader::Attachment.new(:photo)

  belongs_to :user
  enum status: { owned: 0, wanted: 1 }
end
