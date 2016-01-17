class Mark < ActiveRecord::Base
	validates :dob, presence: {message: "(Date of Birth) is missing"}
	
end
