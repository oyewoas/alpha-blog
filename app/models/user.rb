class User < ApplicationRecord
  #Associations
  has_many :articles
  #Validation
  validates :username, presence: true, 
                       uniqueness: { case_sensitive: false }, 
                       length: { minimum: 3, maximum: 25 }
  # Constants are named using all caps
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false }, 
                    length: { maximum: 105 },
                    format: { with: VALID_EMAIL_REGEX }
end