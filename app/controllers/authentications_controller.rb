class AuthenticationsController < ApplicationController
  skip_before_action :authenticate_user!

    def register
      user = User.new(user_params)
      if user.save
        token = Auth.issue({ id: user.id })  #name: user.nickname
        render json: user, status: :ok
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def login
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      token = Auth.issue({ id: user.id }) #modyfield
      render json: { token: token, user: UserSerializer.new(user) }, status: :ok
    else
      render json: { errors: ["Invalid login credentials."] }, status: 401
    end
  end

  private
    def user_params
      params.permit(:motto, :email, :nickname, :photo, :firstname, :skill, :victory, :lose, :lastname, :password, :password_confirmation)
    end
end
