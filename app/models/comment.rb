class Comment < ApplicationRecord
  belongs_to :jam
  belongs_to :user, optional: true
end
