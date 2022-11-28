class Api::V1::TechnologiesController < ApplicationController
  def index
    technologies=Technology.all
    render json: technologies
  end

  def show
  end
end
