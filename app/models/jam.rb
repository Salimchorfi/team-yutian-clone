class Jam < ApplicationRecord
  belongs_to :user
  has_many :comment, dependent: :destroy
  has_one :trade

  validates :name, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader
end
