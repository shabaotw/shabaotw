class News2sController < ApplicationController
  before_action :set_news2, only: [:show, :edit, :update, :destroy]
  authorize_resource :news2
  # GET /news2s
  # GET /news2s.json
  def index
    @news2s = News2.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 15)
  end

  # GET /news2s/1
  # GET /news2s/1.json
  def show
    @newscomments = @news2.newscomments
  end

  # GET /news2s/new
  def new
    @news2 = News2.new
  end

  # GET /news2s/1/edit
  def edit
  end

  # POST /news2s
  # POST /news2s.json
  def create
    @news2 = News2.new(news2_params)
    @news2.user = current_user
    respond_to do |format|
      if @news2.save
        format.html { redirect_to @news2, notice: 'News2 was successfully created.' }
        format.json { render :show, status: :created, location: @news2 }
      else
        format.html { render :new }
        format.json { render json: @news2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news2s/1
  # PATCH/PUT /news2s/1.json
  def update
    respond_to do |format|
      if @news2.update(news2_params)
        format.html { redirect_to @news2, notice: 'News2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @news2 }
      else
        format.html { render :edit }
        format.json { render json: @news2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news2s/1
  # DELETE /news2s/1.json
  def destroy
    @news2.destroy
    respond_to do |format|
      format.html { redirect_to news2s_url, notice: 'News2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news2
      @news2 = News2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news2_params
      params.require(:news2).permit(:title, :content, :category, :tags, :author, :user_id, :Image, :indexcontent, :racelocation, :peopel, :month, :date, :weekdate, :money)
    end
end
