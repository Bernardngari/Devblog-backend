class Blogger < ActiveRecord::Base
	has_many :blogposts
end