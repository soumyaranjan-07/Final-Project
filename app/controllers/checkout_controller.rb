class CheckoutController < ApplicationController
  before_action :authenticate_student!

  def payment
    @cr_id=params[:cr_id]
    @cr=Course.find(params[:cr_id])
    @amount_to_charge=@cr.price.to_i
    @total_price=@amount_to_charge+45
		if request.post?
      
      ActiveMerchant::Billing::Base.mode = :test
      # ActiveMerchant accepts all amounts as Integer values in cents
      #amount = 100
      credit_card = ActiveMerchant::Billing::CreditCard.new(
      :first_name         => params[:first_name],
      :last_name          => params[:last_name],
      :number             => params[:credit_no].to_i,
      :month              => params[:check][:month].to_i,
      :year               => params[:check][:year].to_i,
      :verification_value => params[:verification_number].to_i)

      # Validating the card automatically detects the card type
        gateway =ActiveMerchant::Billing::TrustCommerceGateway.new(
        :login => 'TestMerchant',
        :password =>'password',
        :test => 'true' )
              
        response = gateway.authorize(@total_price,credit_card)
        #response = gateway.purchase(amount_to_charge, credit_card)
        
        puts response.inspect
        
        if response.success?
          gateway.capture(@total_price,response.authorization)
          course=Course.find(params[:cr_id])
          order=Hash.new
          order[:sid]=current_student.id
          order[:course_id]=course.id
          order[:cname]=course.name
          order[:cprice]=@total_price
          order[:sname]=current_student.name 
          order[:semail]=current_student.email
          order[:order_date]=Time.now.strftime("%d/%m/%Y")
          order=Orderdetail.new(order)
          order.save
          @username = current_student
          redirect_to checkout_payment_complete_path(:c=> @cr)
          NotifierMailer.checkout_mail(@username).deliver
        else
          flash[:notice]= "Something went wrong.Try again"
          render :action => "Payment"
        end
    end
  end
  def payment_complete
   @c=params[:c]
   @cr=Course.find(params[:c])
  
  end

  
end
