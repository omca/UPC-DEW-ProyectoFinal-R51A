class SessionsController < ApplicationController
	
	def index
	end

	def new
		@user = User.new
		@paramId = 1;

		respond_to do |format|
		  format.html # new.html.erb
		  format.json { render json: @user }
		end
	end

	def create
		@usuario = User.new
		user = User.find_by_mail(params[:email])
		if user && user.password == params[:password]
			session[:flag_session] = true
			session[:user_id] = user.id
			session[:perfil] = user.user_type_id
			session[:user_name] = user.name + " " + user.last_name + " " + user.surname
			redirect_to @usuario
		else
			#:notice => "Invalid email or password"
			flash.alert = "Email or password invalido"
			render "new"
		end
	end

	def destroy
		session[:flag_session] = false
		session[:user_id] = nil
		redirect_to "/home", :nota => "Logged out!"
	end
end