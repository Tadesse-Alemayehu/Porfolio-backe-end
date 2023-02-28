class ApplicationMailer < ActionMailer::Base
before_action :author
  default from: "tadalem26@gmail.com"
  layout "mailer"
  def author
     @author={
      Fname: "Tadesse", Mname: "Alemayehu", Lname: "Dubale", email: "tadalem26@gmail.com", phone: "+251921577930", address: "Debre Tabor, Ethiopia", PO_BOX: "200", country: "Ethiopia", linkedIn: "https://www.linkedin.com/in/tadessedev/", gitHub: "http://github.com/tadessedev", twitter: "https://twitter.com/tadesseDev", facebook: "https://www.facebook.com/tadesseDev", instagram: "https://www.instagram.com/tadesseDev"
    }
  end
end
