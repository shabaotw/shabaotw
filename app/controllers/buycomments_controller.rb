class BuycommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create, :edit, :update, :destroy]
  def new
    @buy = Buy.find(params[:buy_id])
    @buycomment = Buycomment.new
  end
  def create
    @buy = Buy.find(params[:buy_id])
    @buycomment = Buycomment.new(buycomment_params)
    @buycomment.buy = @buy
    @buycomment.user = current_user
    if @buycomment.save
      redirect_to buy_path(@buy)
    else
      render :new
    end
  end
  private
  def buycomment_params
    params.require(:buycomment).permit(:content)
  end
end
