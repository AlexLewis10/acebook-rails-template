class Post < ApplicationRecord
  belongs_to :user, class_name => "User"
  belongs_to :wall_id, class_name => "User"
  #wall owner  
end
