class RailusersController < ApplicationController
  before_action :set_railuser, only: [:show, :edit, :update, :destroy]

  # GET /railusers
  # GET /railusers.json
  def index
    @railusers = Railuser.all
  end

  # GET /railusers/1
  # GET /railusers/1.json
  def show
  end

  # GET /railusers/new
  def new
    @railuser = Railuser.new
  end

  # GET /railusers/1/edit
  def edit
  end

  # POST /railusers
  # POST /railusers.json
  def create
    @railuser = Railuser.new(railuser_params)

    respond_to do |format|
      if @railuser.save
        format.html { redirect_to @railuser, notice: 'Railuser was successfully created.' }
        format.json { render :show, status: :created, location: @railuser }
      else
        format.html { render :new }
        format.json { render json: @railuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /railusers/1
  # PATCH/PUT /railusers/1.json
  def update
    respond_to do |format|
      if @railuser.update(railuser_params)
        format.html { redirect_to @railuser, notice: 'Railuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @railuser }
      else
        format.html { render :edit }
        format.json { render json: @railuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railusers/1
  # DELETE /railusers/1.json
  def destroy
    @railuser.destroy
    respond_to do |format|
      format.html { redirect_to railusers_url, notice: 'Railuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railuser
      @railuser = Railuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def railuser_params
      params.require(:railuser).permit(:name, :email)
    end
end
