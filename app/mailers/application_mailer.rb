class ApplicationMailer < ActionMailer::Base
before_action :author
  default from: "tadalem26@gmail.com"
  layout "mailer"
  def author
     @author={Fname: "Tadesse", Mname: "Alemayehu", Lname: "Dubale", email: "tadalem26@gmail.com", phone: "+251921577930", address: "Debre Tabor, Ethiopia", PO_BOX: "200", country: "Ethiopia"}
  end
end
