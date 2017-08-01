class Jam < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  has_one :trade


  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_name, against: [ :name ]
end
