class Api::V1::AuthenticationsController < ApplicationController
  def form_token
    render json: {"token":form_authenticity_token}
  end
end
