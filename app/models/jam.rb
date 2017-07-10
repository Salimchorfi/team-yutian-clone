class Jam < ApplicationRecord
  belongs_to :user
  has_many :comment dependent: :destroy
  has_one :transaction
end
