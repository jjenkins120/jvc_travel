class User < ApplicationRecord
    has_many :trips
    has_many :destinations, through: :trips
    has_many :posts, through: :trips
    has_many :comments
    #has_many :commented_on_posts, through: :comments, foreign_key: :user_id, class_name: "User"
    has_secure_password

end
