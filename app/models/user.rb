class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  # validates :name, uniqueness: true
  VALID_EMAIL_REGEX = /\w\S*@[a-z]*\.[a-z]{2,30}([a-z]|\.[a-z]{2,30})/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { in: 6..10 }
  
  has_many :posts, :class_name => "Post", :foreign_key => :user_id #my_wall_posts
  has_many :locations, :class_name => "Post", :foreign_key => :user_id # recipient_posts
  #specify foreign key  
  # has_many :credits, :class_name => "Expense", :foreign_key => :creditor_id 
end
