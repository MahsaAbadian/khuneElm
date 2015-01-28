class Enrolement < ActiveRecord::Base
	belongs_to :kid
	belongs_to :clazz
end
