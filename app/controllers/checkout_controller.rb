class CheckoutController < ApplicationController
  def create
    product = Product.find(params[:id])
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
         price_data: {
          currency: 'usd',
          unit_amount: product.price*product.quant,
          product_data: {
            name: product.name,
            description: product.description,
            },},
            quantity: 1,}],
      success_url: "https://www.google.com/", 
      cancel_url: "https://www.google.com/",  
      mode: 'payment',
    )
   redirect_to @session['url'], allow_other_host: true

  end
end
