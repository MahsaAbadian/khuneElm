class Clazz < ActiveRecord::Base
	belongs_to :group
	has_many :class_sessions
	has_many :enrolements
	has_many :class_teachers	
end
