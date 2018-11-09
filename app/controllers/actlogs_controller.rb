class ActlogsController < ApplicationController
  before_action :set_actlog, only: [:show, :edit, :update, :destroy ]

  
  def index
    @actlogs = Actlog.all
    @category = Category.all.includes(:actlogs).order("actlogs.date DESC")
  end

  
  def show
  end

 
  def new
    @actlog = Actlog.new
    @category = Category.all
  end

 
  def edit
  end

 
  def create
    @actlog = Actlog.new(actlog_info)

    respond_to do |format|
      if @actlog.save
        format.html { redirect_to @actlog, notice: 'Actlog was successfully created.' }
        format.json { render :show, status: :created, location: @actlog }
      else
        format.html { render :new }
        format.json { render json: @actlog.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @actlog.update(actlog_params)
        format.html { redirect_to @actlog, notice: 'Actlog was successfully updated.' }
        format.json { render :show, status: :ok, location: @actlog }
      else
        format.html { render :edit }
        format.json { render json: @actlog.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @actlog.destroy
    respond_to do |format|
      format.html { redirect_to actlogs_url, notice: 'Actlog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def sum
    @categories = Category.all
  end

  private
    
    def set_actlog
      @actlog = Actlog.find(params[:id])
    end

    
    def actlog_params
      params.require(:actlog).permit(:date, :category_id, :starttime, :endtime, :time)
    end

    def actlog_info
      actlog_params.merge(@actlog.time)
    end

end
