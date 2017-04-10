class UsersController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  before_action :authenticate_user!
  
  def info
      @subscription = current_user.subscription
      if @subscription.active
        @stripe_customer = Stripe::Customer.retrieve(@subscription.stripe_user_id)
        @stripe_subscription = @stripe_customer.subscriptions.first
      end
  end
  
  def cancel_subscription
       @stripe_customer = Stripe::Customer.retrieve(current_user.subscription.stripe_user_id)
        @stripe_subscription = @stripe_customer.subscriptions.first
        
        @stripe_subscription.delete
        current_user.subscription.active = false
        current_user.subscription.save
        
        redirect_to users_info_path
  end
  
  def charge
      token = params["stripeToken"]
      customer = Stripe::Customer.create( source: token, plan: 'mysubscriptionlevel1', email: current_user.email)
        
        current_user.subscription.stripe_user_id = customer.id
        current_user.subscription.active = true
        current_user.subscription.save
        
        redirect_to users_info_path
  end
end
