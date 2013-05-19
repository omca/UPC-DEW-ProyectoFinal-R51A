class AssistancesController < ApplicationController
  before_action :set_assistance, only: [:show, :edit, :update, :destroy]

  # GET /assistances
  # GET /assistances.json
  def index
    @assistances = Assistance.all
  end

  # GET /assistances/1
  # GET /assistances/1.json
  def show
  end

  # GET /assistances/new
  def new
    @assistance = Assistance.new
  end

  # GET /assistances/1/edit
  def edit
  end

  # POST /assistances
  # POST /assistances.json
  def create
    @assistance = Assistance.new(assistance_params)

    respond_to do |format|
      if @assistance.save
        format.html { redirect_to @assistance, notice: 'Assistance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @assistance }
      else
        format.html { render action: 'new' }
        format.json { render json: @assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assistances/1
  # PATCH/PUT /assistances/1.json
  def update
    respond_to do |format|
      if @assistance.update(assistance_params)
        format.html { redirect_to @assistance, notice: 'Assistance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assistances/1
  # DELETE /assistances/1.json
  def destroy
    @assistance.destroy
    respond_to do |format|
      format.html { redirect_to assistances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistance
      @assistance = Assistance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assistance_params
      params.require(:assistance).permit(:concert_id, :user_id, :assistance_flag, :score)
    end
end
