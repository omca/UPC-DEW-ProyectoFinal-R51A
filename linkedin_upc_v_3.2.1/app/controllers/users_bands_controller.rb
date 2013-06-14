class UsersBandsController < ApplicationController
  # GET /users_bands
  # GET /users_bands.json
  def index
      @users_bands = UsersBand.all(:group => "band_id")
      #@total = UsersBand.count(:band_id, :conditions => ["band_id=?",params[:id]])   
      #@total = UsersBand.count(:band_id,:conditions =>"band_id=" params[:id])  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @users_bands }
    end
  end

  # GET /users_bands/1
  # GET /users_bands/1.json
  def show
   # @users_band = UsersBand.find(params[:id ])
   @users_band = UsersBand.all(:conditions => ["band_id=?",params[:id ]])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_band }
    end
  end

  # GET /users_bands/new
  # GET /users_bands/new.json
  def new
    @users_band = UsersBand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_band }
    end
  end

  # GET /users_bands/1/edit
  def edit
    @users_band = UsersBand.find(params[:id])
  end

  # POST /users_bands
  # POST /users_bands.json
  def create
    @users_band = UsersBand.new(params[:users_band])

    respond_to do |format|
      if @users_band.save
        format.html { redirect_to @users_band, notice: 'Users band was successfully created.' }
        format.json { render json: @users_band, status: :created, location: @users_band }
      else
        format.html { render action: "new" }
        format.json { render json: @users_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users_bands/1
  # PUT /users_bands/1.json
  def update
    @users_band = UsersBand.find(params[:id])

    respond_to do |format|
      if @users_band.update_attributes(params[:users_band])
        format.html { redirect_to @users_band, notice: 'Users band was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_bands/1
  # DELETE /users_bands/1.json
  def destroy
    @users_band = UsersBand.find(params[:id])
    @users_band.destroy

    respond_to do |format|
      format.html { redirect_to users_bands_url }
      format.json { head :no_content }
    end
  end
end
