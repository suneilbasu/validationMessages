class Mark < ActiveRecord::Base
	validates :dob, presence: {message: "boy wonder"}
	
end
