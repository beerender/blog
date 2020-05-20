class UserMailer < ActionMailer::Base
    default from: "cu.16bcs2088@gmail.com"
 
    def sample_email(user)
        @user = user
        mail(to: @user.email, subject: 'Sample Email')
    end
    
end
