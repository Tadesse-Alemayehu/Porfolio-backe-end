class Api::V1::TechnologiesController < ApplicationController
  def index
    @technologies=Technology.all
    @technologies.each do |technology|
      technology.icon= request.base_url+technology.icon
    end
    render json: @technologies
  end

  def show
  end
end
