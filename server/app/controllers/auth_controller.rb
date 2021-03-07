class AuthController < ApplicationController
    skip_before_action :check_authentication, only: [:create]
  
    def create 
      user = User.find_by(username: params[:username])
  
      if user && user.authenticate(params[:password])
        render json: {status: 200, username: user.username, id: user.id, token: encode_token({user_id: user.id})}
      else 
        render json: {status:"not valid", error: "Invalid username or password"}
      end
   end
  end