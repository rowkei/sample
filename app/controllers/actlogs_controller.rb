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
    @actlog = Actlog.new(actlog_params)
    if @actlog.save
      redirect_to @actlog, notice: 'Actlog was successfully created.'
    else
      render :new
    end
  end
  
  def update
    if @actlog.update(actlog_params)
      redirect_to @actlog, notice: 'Actlog was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @actlog.destroy
    redirect_to actlogs_url, notice: 'Actlog was successfully destroyed.'
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

end