class Project < ActiveRecord::Base



	has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/projects/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/projects/:id/:style/:basename.:extension"
	# validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 10.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

	has_many :comments, :dependent => :destroy
	belongs_to :user

	validates :name, :country, :university, :major, :description, :owner, :contact, presence: true
	validates :name, :owner, :contact, length: {in: 3..20}
	validates :description, length: {in: 4..150}
	
	before_save :uppercase
	def uppercase
		self.name.upcase!
		self.owner.upcase!
	end

end
