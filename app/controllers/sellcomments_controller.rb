class SellcommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def new
    @sell = Sell.find(params[:sell_id])
    @sellcomment = Sellcomment.new
  end
  def create
    @sell = Sell.find(params[:sell_id])
    @sellcomment = Sellcomment.new(sellcomment_params)
    @sellcomment.sell = @sell
    @sellcomment.user = current_user
    if @sellcomment.save
      redirect_to sell_path(@sell)
    else
      render :new
    end
  end
  private
  def sellcomment_params
    params.require(:sellcomment).permit(:content)
  end
end
