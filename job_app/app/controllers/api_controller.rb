class ApiController < ActionController::API
  before_action :allow_params!

  private

  def allow_params!
    params.permit!
  end
end
