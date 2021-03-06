# encoding: utf-8
class SessionsController < ApplicationController
  layout "login"
  skip_before_filter :authorize
  def new
  end

  def create
    if user = User.authenticate(params[:username], params[:password])
      if user.rol == "Admin"
          if params[:remember_me]
           cookies.permanent[:auth_token] = user.auth_token
         else
           cookies[:auth_token] = user.auth_token  
         end  
         #redirect_to admin_stories_path
       elsif user.rol == "Superadmin"
         #session[:user_id] = user.id
         if params[:remember_me]
           cookies.permanent[:auth_token] = user.auth_token
         else
           cookies[:auth_token] = user.auth_token  
         end         
         #redirect_to alumno_stories_path
       elsif user.rol == "Teacher"
         if params[:remember_me]
           cookies.permanent[:auth_token] = user.auth_token
         else
           cookies[:auth_token] = user.auth_token  
         end  
         #redirect_to cliente_stories_path
      end
       else
         redirect_to login_url, :alert => "Usuario y/o contraseña invalidos"
       end
  end

  def destroy
     #session[:user_id] = nil
     cookies.delete(:auth_token)
     redirect_to login_url, :notice => "Logged out"
   end
end
