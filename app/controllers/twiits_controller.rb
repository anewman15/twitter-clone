class TwiitsController < ApplicationController
  before_action :set_twiit, only: [:show, :edit, :update, :destroy]

  # GET /twiits
  # GET /twiits.json
  def index
    @twiits = Twiit.all.order("created_at DESC")
    @twiit = Twiit.new
  end

  # GET /twiits/1
  # GET /twiits/1.json  

  def show
    @twiit = Twiit.find(params[:id])
  end

  # GET /twiits/new
  def new
    @twiit = Twiit.new
  end

  # GET /twiits/1/edit
  def edit
    @twiit = Twiit.find(params[:id])
  end

  # POST /twiits
  # POST /twiits.json
  def create
    @twiit = Twiit.new(twiit_params)

    respond_to do |format|
      if @twiit.save
        format.html { redirect_to root_path, notice: 'Twiit was successfully created.' }
        format.json { render :show, status: :created, location: @twiit }
      else
        format.html { render :new }
        format.json { render json: @twiit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twiits/1
  # PATCH/PUT /twiits/1.json
  def update
    respond_to do |format|
      if @twiit.update(twiit_params)
        format.html { redirect_to @twiit, notice: 'Twiit was successfully updated.' }
        format.json { render :show, status: :ok, location: @twiit }
      else
        format.html { render :edit }
        format.json { render json: @twiit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twiits/1
  # DELETE /twiits/1.json
  def destroy
    @twiit.destroy
    respond_to do |format|
      format.html { redirect_to twiits_url, notice: 'Twiit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twiit
      @twiit = Twiit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twiit_params
      params.require(:twiit).permit(:twiit)
    end
end
