class Play < ApplicationRecord
  belongs_to :user
  belongs_to :category
  # attr_accessor :name, :play_img
  include ImageUploader::Attachment(:image) # adds an `image` virtual attribute
  # has_one_attached :play_img
end
