class Blogger < ActiveRecord::Base
	has_many :blogposts
	validates :name, uniqueness: true, presence: true
end