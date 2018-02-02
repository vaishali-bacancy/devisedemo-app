class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end

  #def welcome_email(user, department)
	#	@user = user
	#	@department = department
		#puts @user.email
		#mail (:to @user.email,
		# :subject "Department created successfully",
		# :bcc ["vaishali.pitroda@bacancytechnology.com", "swati.chauhan@bacancytechnology.com"])
	#end