module Jackpot
  class ReceiptsController < ApplicationController
    before_filter :authenticate_user!

    def show
      @payment = Payment.find params[:payment_id]
    end 

  end 
end 