class User < ApplicationRecord
    has_many :trips
    has_many :destinations, through: :trips
    has_many :posts, through: :trips
    has_many :comments
    #has_many :commented_on_posts, through: :comments, foreign_key: :user_id, class_name: "User"
    has_secure_password

    validates :username, uniqueness: true
    validates :age, numericality: {greater_than_or_equal_to: 15}
    validates :name, :username, :email, presence: true
    

end
