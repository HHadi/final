class Comment < ActiveRecord::Base	
	belongs_to :project
	belongs_to :user

	validates :comment, length: {in: 5..150}
end
