class ActlogsController < ApplicationController
  before_action :set_actlog, only: [:show, :edit, :update, :destroy ]

  # GET /actlogs
  # GET /actlogs.json
  def index
    @actlogs = Actlog.all
  end

  # GET /actlogs/1
  # GET /actlogs/1.json
  def show
  end

  # GET /actlogs/new
  def new
    @actlog = Actlog.new
  end

  # GET /actlogs/1/edit
  def edit
  end

  # POST /actlogs
  # POST /actlogs.json
  def create
    @actlog = Actlog.new(actlog_params)

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

  # PATCH/PUT /actlogs/1
  # PATCH/PUT /actlogs/1.json
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

  # DELETE /actlogs/1
  # DELETE /actlogs/1.json
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
    # Use callbacks to share common setup or constraints between actions.
    def set_actlog
      @actlog = Actlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actlog_params
      params.require(:actlog).permit(:date, :category, :time)
    end
end
