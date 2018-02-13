class UserMailer < ApplicationMailer

	def welcome_email(user,department)
    @user = user
    @department = department
    mail(to: @user.email,
         cc: ["vaishalipitroda@hotmail.com","vaishali.pitroda@bacancytechnology.com"])
  end  
end

