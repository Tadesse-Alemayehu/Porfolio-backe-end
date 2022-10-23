class Api::V1::AuthenticationsController < ApplicationController
  def form_token
    render json: {"token": "1JQ8zyg5fdyovig9sTYBug"}
  end
end
