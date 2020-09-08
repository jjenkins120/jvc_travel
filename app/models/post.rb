class Post < ApplicationRecord
  belongs_to :trip
  has_one :user, through: :trip
end
