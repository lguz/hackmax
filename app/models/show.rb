class Show < ActiveRecord::Base

	belongs_to :movie
	belongs_to :theater
	belongs_to :seat
	has_many :reserve
end
