class Api::V1::TestimonialsController < ApplicationController
  def index
    @testimonials=Testimony.all
    @testimonials.each do |testimony|
      testimony.image= request.base_url+testimony.image
    end
    render json: @testimonials
  end
end
