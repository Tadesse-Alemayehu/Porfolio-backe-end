class Api::V1::MessagesController < ApplicationController
  def index
    render json: Message.all
  end
  def show
    message=Message.find_by_id params[:id]
    if message
      render json: message
    else
      render json: {"message": "No message is found with #{params[:id]} id", status: 404},
      :status => :bad_request
    end
  end
  def create
    message=Message.new(full_name: params[:full_name],email: params[:email],phone_number: params[:phone_number],message: params[:message])
    if message.save
      render json: {"message": "success in submitting your message", status: 200}, status: :ok
      MessageMailer.with(user: message).send_user.deliver_now
      MessageMailer.with(user: message).send_author.deliver_now
    else
      render json: {"message": "fails to save your message", status: 404},
      :status => :bad_request
    end
    # p "Auth token is"+form_authenticity_token
  end
  private
    # sanitize rails param with other views
end
