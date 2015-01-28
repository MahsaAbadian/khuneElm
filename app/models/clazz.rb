class Clazz < ActiveRecord::Base
	belongs_to :group
	has_many :class_sessions
	has_many :enrolements
	
end
