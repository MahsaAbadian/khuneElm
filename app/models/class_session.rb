class ClassSession < ActiveRecord::Base
	belongs_to :clazz
	has_many :attendances
end
