class UsersController < ApiController
  before_action :authenticate_user!

  def show
  end

  def update
    if current_user.update_attributes(user_params)
      render :show
    else
      render json: { erros: current_user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :last_name, :email, :password)
  end

end
