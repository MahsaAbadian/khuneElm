class DashboardController < ApplicationController
	before_filter :authenticate_user!
  def index
      puts '===================== ' + current_user.role.name
      puts '===================== ' + current_user.role.name == 'admin'

    if not(current_user.role.name == 'admin')
      redirect_to root_path , :alert => "شما محاز نیستید"
    end
  	@roles = Role.all.collect { |c| [c.name , c.id]}
  	@user = User.new
  	@users = User.all
  end

  def create
  	print '===========================' + params.to_s + params[:password]

  	user = User.new
  	user.email = params[:username]

  	user.password = params[:password]
  	# user.password = '12345678'
  	# print '>>>>>>>>>>>>>' + user.password
  	user.password_confirmation = params[:password_confirmation]

  	user.role = Role.find(params[:role].to_i)

  	if user.save
  		redirect_to :back , :notice => "کاربر جدید ساخته شد"
  	else
  		redirect_to :back , :alert => "#{user.errors.full_messages.to_sentence}"
  	end
  end
end
