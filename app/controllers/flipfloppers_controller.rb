class FlipfloppersController < ApplicationController
  before_action :set_flipflopper, only: [:show, :edit, :update, :destroy]

  # GET /flipfloppers
  # GET /flipfloppers.json
  def index
    @flipfloppers = Flipflopper.all
  end

  # GET /flipfloppers/1
  # GET /flipfloppers/1.json
  def show
  end

  # GET /flipfloppers/new
  def new
    @flipflopper = Flipflopper.new
  end

  # GET /flipfloppers/1/edit
  def edit
  end

  # POST /flipfloppers
  # POST /flipfloppers.json
  def create
    @flipflopper = Flipflopper.new(flipflopper_params)

    respond_to do |format|
      if @flipflopper.save
        format.html { redirect_to @flipflopper, notice: 'Flipflopper was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flipflopper }
      else
        format.html { render action: 'new' }
        format.json { render json: @flipflopper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flipfloppers/1
  # PATCH/PUT /flipfloppers/1.json
  def update
    respond_to do |format|
      if @flipflopper.update(flipflopper_params)
        format.html { redirect_to @flipflopper, notice: 'Flipflopper was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flipflopper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flipfloppers/1
  # DELETE /flipfloppers/1.json
  def destroy
    @flipflopper.destroy
    respond_to do |format|
      format.html { redirect_to flipfloppers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flipflopper
      @flipflopper = Flipflopper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flipflopper_params
      params.require(:flipflopper).permit(:drink, :name, :surname, :email, :birthday, :comment)
    end
end
