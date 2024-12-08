class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound do |exception|
      render json: { error: 'Resource not found.' }, status: :not_found
    end
  
    rescue_from ActionController::ParameterMissing do |exception|
    end
end