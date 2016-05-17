class ManofacturersController < ApplicationController
  before_action :set_manofacturer, only: [:show, :edit, :update, :destroy]

  # GET /manofacturers
  # GET /manofacturers.json
  def index
    @manofacturers = Manofacturer.all
  end

  # GET /manofacturers/1
  # GET /manofacturers/1.json
  def show
  end

  # GET /manofacturers/new
  def new
    @manofacturer = Manofacturer.new
  end

  # GET /manofacturers/1/edit
  def edit
  end

  # POST /manofacturers
  # POST /manofacturers.json
  def create
    @manofacturer = Manofacturer.new(manofacturer_params)

    respond_to do |format|
      if @manofacturer.save
        format.html { redirect_to @manofacturer, notice: 'Manofacturer was successfully created.' }
        format.json { render :show, status: :created, location: @manofacturer }
      else
        format.html { render :new }
        format.json { render json: @manofacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manofacturers/1
  # PATCH/PUT /manofacturers/1.json
  def update
    respond_to do |format|
      if @manofacturer.update(manofacturer_params)
        format.html { redirect_to @manofacturer, notice: 'Manofacturer was successfully updated.' }
        format.json { render :show, status: :ok, location: @manofacturer }
      else
        format.html { render :edit }
        format.json { render json: @manofacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manofacturers/1
  # DELETE /manofacturers/1.json
  def destroy
    @manofacturer.destroy
    respond_to do |format|
      format.html { redirect_to manofacturers_url, notice: 'Manofacturer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manofacturer
      @manofacturer = Manofacturer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manofacturer_params
      params.require(:manofacturer).permit(:name, :video)
    end
end
