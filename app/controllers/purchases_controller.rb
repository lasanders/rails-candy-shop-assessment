class PurchasesController < ApplicationController
    before_action :current_user
    
  def new
   @purchase = Purchase.new
  end
  
  def create
     @purchase = Purchase.create(:user_id => params[:user_id], :candy_id => params[:candy_id])
     @message = @purchase.purchase_candy
    redirect_to user_path(@purchase.user, :message => @message)
  end
  
private

def ride_params
params.require(:purchase).permit(:user_id, :purchase_id)
end
end

