class Reserve < ActiveRecord::Base
	belongs_to :seat
	has_many :show
end
