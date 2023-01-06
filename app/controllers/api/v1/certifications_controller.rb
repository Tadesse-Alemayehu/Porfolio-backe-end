class Api::V1::CertificationsController < ApplicationController
  def index
    @certifications = Certification.all
    @certifications.each do |certificate|
      certificate.image = request.base_url+certificate.image
    end
    render json: @certifications, status: :ok
  end
end
