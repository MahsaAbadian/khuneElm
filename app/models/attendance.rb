class Attendance < ActiveRecord::Base
	belongs_to :class_session
	belongs_to :kid
end
