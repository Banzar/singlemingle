class UsersController < ApplicationController
  def index
  	@users = User.paginate(page: params[:page], per_page: 10)
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      #UserMailer.account_activation(@user).deliver_now
  		#flash[:notice] = "Thank you for signing up at Legacy Files. Please check your email to activate your account."
  		redirect_to root_url
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def show
  	@user = User.find(params[:id])
  end

  def profile
  end

  private
  def user_params
  	params.require(:user).permit(:fname, :lname, :username, :password, :password_confirmation, :i_am, :looking_for, :email, :state, :city, :street, :zip_code, :sex, :headline, :description, :admin)
  end
end
