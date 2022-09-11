class Blogpost < ActiveRecord::Base
	belongs_to :blogger
	validates :body, presence: true
	validates :title, presence: true
end