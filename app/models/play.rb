class Play < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews
  # attr_accessor :name, :play_img
  # include ImageUploader::Attachment(:image) # adds an `image` virtual attribute
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  has_one_attached :image
  # has_one_attached :play_img
end
