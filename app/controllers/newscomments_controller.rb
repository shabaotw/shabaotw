class NewscommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def new
    @news2 = News2.find(params[:news2_id])
    @newscomment = Newscomment.new
  end
  def create
    @news2 = News2.find(params[:news2_id])
    @newscomment = Newscomment.new(newscomment_params)
    @newscomment.news2 = @news2
    @newscomment.user = current_user
    if @newscomment.save
      redirect_to news2_path(@news2)
    else
      render :new
    end
  end
  private
  def newscomment_params
    params.require(:newscomment).permit(:content)
  end
end
