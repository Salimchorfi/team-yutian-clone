class Jam < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one :trade

  validates :name, presence: true, uniqueness: true
end
