class DingsController < ApplicationController
  before_action :set_ding, only: [:show, :edit, :update, :destroy]

  # GET /dings
  # GET /dings.json
  def index
    @dings = Ding.all
  end

  # GET /dings/1
  # GET /dings/1.json
  def show
  end

  # GET /dings/new
  def new
    @ding = Ding.new
  end

  # GET /dings/1/edit
  def edit
  end

  # POST /dings
  # POST /dings.json
  def create
    @ding = Ding.new(ding_params)

    respond_to do |format|
      if @ding.save
        format.html { redirect_to @ding, notice: 'Ding was successfully created.' }
        format.json { render :show, status: :created, location: @ding }
      else
        format.html { render :new }
        format.json { render json: @ding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dings/1
  # PATCH/PUT /dings/1.json
  def update
    respond_to do |format|
      if @ding.update(ding_params)
        format.html { redirect_to @ding, notice: 'Ding was successfully updated.' }
        format.json { render :show, status: :ok, location: @ding }
      else
        format.html { render :edit }
        format.json { render json: @ding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dings/1
  # DELETE /dings/1.json
  def destroy
    @ding.destroy
    respond_to do |format|
      format.html { redirect_to dings_url, notice: 'Ding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ding
      @ding = Ding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ding_params
      params.require(:ding).permit(:zeug)
    end
end
