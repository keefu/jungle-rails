class OrderMailer < ActionMailer::Base
    default from: "reply@jungle.com"

    def order_email(user)
        @user = user
        mail(to: @user.email, subject: 'Sample Email')
    end
end

