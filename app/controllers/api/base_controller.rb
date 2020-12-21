class Api::BaseController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :authentification

  def authentification
    if request.headers['Authorization'] != ENV['API_TOKEN']
      render json: {
        code: 'AUTHENTICATION_FAILED',
        errors: [
          {field: 'api_token'}
        ],
        status: 401
      }, status: 401
    end
  end
end
