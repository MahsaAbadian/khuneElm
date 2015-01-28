# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.find_or_create_by(:name => "teacher")
Role.find_or_create_by(:name => "admin")
Role.find_or_create_by(:name => "manager")

if User.find_by_email("mahsa.abadian@gmail.com").blank?
	user = User.create(:email => "mahsa.abadian@gmail.com", :password => "12345678", :password_confirmation => "12345678", :role_id => Role.find_by_name("admin").id )	
	Profile.create(:first_name => "مهسا", :last_name => "آبادیان", :phone_number => "09111111111", :birth_date => Time.now, :user_id => user.id)
	##### profile
end
if User.find_by_email("borghei71@gmail.com").blank?
	user = User.create(:email => "borghei71@gmail.com", :password => "12345678", :password_confirmation => "12345678", :role_id => Role.find_by_name("manager").id )	
	Profile.create(:first_name => "سید محمد", :last_name => "برقعی", :phone_number => "09222222222", :birth_date => Time.now, :user_id => user.id)
	##### profile
end
