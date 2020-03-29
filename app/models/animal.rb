class Animal < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImagesUploader
  validates :user_id, presence:true
end
