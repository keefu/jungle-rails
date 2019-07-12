class OrderMailer < ActionMailer::Base
    default from: "reply@jungle.com"

    def order_email(order)
        @order = order
        mail(to: @order.email, subject: 'Order Placed!')
    end
end

