class Trade < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :jam
end
