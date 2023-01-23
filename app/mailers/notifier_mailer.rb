class NotifierMailer < ApplicationMailer
    def checkout_mail(user)
        @name = user.name
        mail(to:"soumyaranjanb533@gmail.com",subject:"ALERT=====A Course is Checkout Successfully")
    end 
end
