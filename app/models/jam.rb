class Jam < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  has_one :trade

  validates :name, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader
end
