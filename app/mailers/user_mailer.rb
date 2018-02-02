class UserMailer < ApplicationMailer

	def welcome_email(user,department)
    @user = user
    @department = department
    mail(to: @user.email,
         cc: ["mihir.kanzariya@bacancytechnology.com","vaishali.pitroda@bacancytechnology.com"])
  end  
end

