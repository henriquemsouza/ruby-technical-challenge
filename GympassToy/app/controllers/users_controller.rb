class UsersController < ApplicationController
  	before_action :require_no_authentication, only: [:new, :create]
	before_action :can_change, only: [:edit, :update]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
   @user = User.find(params[:id])
  end

 # POST /users
  # POST /users.json
  def create
		@user = User.new(user_params)
		if @user.save
			Signup.confirm_email(@user).deliver

			redirect_to @user,
				notice: 'Cadastrado com Sucesso!'
		else
			render action: :new
		end
	
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :full_name, :home_address, :work_address, :job)
    end
	
	def can_change
		unless user_signed_in? && current_user == user_signed_in?
			redirect_to user_path(params[:id])
		end
	end

	def user
		@user ||= User.find(params[:id])
	end
end
