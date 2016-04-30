class RailmicropostsController < ApplicationController
  before_action :set_railmicropost, only: [:show, :edit, :update, :destroy]

  # GET /railmicroposts
  # GET /railmicroposts.json
  def index
    @railmicroposts = Railmicropost.all
  end

  # GET /railmicroposts/1
  # GET /railmicroposts/1.json
  def show
  end

  # GET /railmicroposts/new
  def new
    @railmicropost = Railmicropost.new
  end

  # GET /railmicroposts/1/edit
  def edit
  end

  # POST /railmicroposts
  # POST /railmicroposts.json
  def create
    @railmicropost = Railmicropost.new(railmicropost_params)

    respond_to do |format|
      if @railmicropost.save
        format.html { redirect_to @railmicropost, notice: 'Railmicropost was successfully created.' }
        format.json { render :show, status: :created, location: @railmicropost }
      else
        format.html { render :new }
        format.json { render json: @railmicropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /railmicroposts/1
  # PATCH/PUT /railmicroposts/1.json
  def update
    respond_to do |format|
      if @railmicropost.update(railmicropost_params)
        format.html { redirect_to @railmicropost, notice: 'Railmicropost was successfully updated.' }
        format.json { render :show, status: :ok, location: @railmicropost }
      else
        format.html { render :edit }
        format.json { render json: @railmicropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railmicroposts/1
  # DELETE /railmicroposts/1.json
  def destroy
    @railmicropost.destroy
    respond_to do |format|
      format.html { redirect_to railmicroposts_url, notice: 'Railmicropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railmicropost
      @railmicropost = Railmicropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def railmicropost_params
      params.require(:railmicropost).permit(:content, :user_id)
    end
end
