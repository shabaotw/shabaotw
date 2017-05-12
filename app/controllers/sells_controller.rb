class SellsController < ApplicationController
  before_action :set_sell, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  authorize_resource :sells
  skip_before_action :verify_authenticity_token , :only => [:action_name]

  # GET /sells
  # GET /sells.json
  def index
    @sells = Sell.all.order("created_at DESC")
  end

  # GET /sells/1
  # GET /sells/1.json
  def show
    @sellcomments = @sell.sellcomments
  end

  # GET /sells/new
  def new
    @sell = Sell.new
  end

  # GET /sells/1/edit
  def edit
  end

  # POST /sells
  # POST /sells.json
  def create
    @sell = Sell.new(sell_params)
    @sell.user = current_user
    respond_to do |format|
      if @sell.save
        format.html { redirect_to @sell, notice: 'Sell was successfully created.' }
        format.json { render :show, status: :created, location: @sell }
      else
        format.html { render :new }
        format.json { render json: @sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sells/1
  # PATCH/PUT /sells/1.json
  def update
    respond_to do |format|
      if @sell.update(sell_params)
        format.html { redirect_to @sell, notice: 'Sell was successfully updated.' }
        format.json { render :show, status: :ok, location: @sell }
      else
        format.html { render :edit }
        format.json { render json: @sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sells/1
  # DELETE /sells/1.json
  def destroy
    @sell.destroy
    respond_to do |format|
      format.html { redirect_to sells_url, notice: 'Sell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_sell
    @sell = Sell.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def sell_params
    params.require(:sell).permit(:phone, :time, :location, :category, :weight, :price, :content, :user_id, :status)
  end
end
