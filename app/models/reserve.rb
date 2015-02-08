class Reserve < ActiveRecord::Base
	belongs_to :seat
	belongs_to :show
end
