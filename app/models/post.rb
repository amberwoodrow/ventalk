class Post < ActiveRecord::Base
	belongs_to :user
	has_many :topics
	has_many :comments
end
