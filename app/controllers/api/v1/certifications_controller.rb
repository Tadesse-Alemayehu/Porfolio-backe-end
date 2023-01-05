class Api::V1::CertificationsController < ApplicationController
  def index
    @certifications = Certification.all
    render json: @certifications, status: :ok
  end
end
