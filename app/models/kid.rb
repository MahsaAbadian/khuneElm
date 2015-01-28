class Kid < ActiveRecord::Base
	has_many :enrolements
	has_many :attendances
end
