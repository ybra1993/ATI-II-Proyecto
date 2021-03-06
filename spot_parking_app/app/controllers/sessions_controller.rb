class SessionsController < ApplicationController
	def new
	end
	
	def create
	  reset_session #al iniciar sesion siempre se deberia borrar lo que habia
	  email = params[:user][:email]
    pass = params[:user][:password]

    user = User.where(email: email, password: pass).take
    token = Digest::SHA1.hexdigest([Time.now, rand].join)
    id = [email,token]
    if user
     session[:user_id] = id
     redirect_to user_home_path(user)
    else
     	flash[:message] = "Error"
     	render action: 'new'
    end
	end

  def destroy
    reset_session
    redirect_to root_path  
    return
  end

	private
  	def reset_session
	  session[:user_id]=nil
  	end
end
