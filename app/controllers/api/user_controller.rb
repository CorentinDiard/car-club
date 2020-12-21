class Api::UserController < Api::BaseController
  def create
    user = User.create!(user_params)
    render json: user
  rescue ActiveRecord::RecordInvalid => invalid
    render json: {
      errors: invalid.record.errors.full_messages
    }, status: 422
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    render json: user
  rescue ActiveRecord::RecordNotFound => not_found
    render json: {
      errors: [not_found]
    }, status: 404
  rescue ActiveRecord::RecordInvalid => invalid
    render json: {
      errors: invalid.record.errors.full_messages
    }, status: 422
  end

  # def delete
    
  # end

  private

  def user_params
    params.require(:user).permit(:lastname, :firstname, :email, :username, :password, :profile_picture_url)
  end
end
