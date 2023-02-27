class HomeController < ApplicationController
  def index
    @user = {email: "itsamateroflife@gmail.com"}
     MessageMailer.with(user: @user).send_user.deliver_now
     MessageMailer.with(user: @user).send_author.deliver_now
  end
end
