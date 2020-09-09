class Post < ApplicationRecord
  belongs_to :trip
  has_one :user, through: :trip
  has_many :comments, :dependent => :destroy
  has_many :post_tags, :dependent => :destroy
  has_many :tags, through: :post_tags

  accepts_nested_attributes_for :tags

end
