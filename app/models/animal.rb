class Animal < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy
  mount_uploader :image, ImagesUploader
  validates :user_id, presence:true
end
