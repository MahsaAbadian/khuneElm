class EnrolementsController < ApplicationController
  before_action :set_enrolement, only: [:show, :edit, :update, :destroy]

  # GET /enrolements
  # GET /enrolements.json
  def index
    @enrolements = Enrolement.all
  end

  # GET /enrolements/1
  # GET /enrolements/1.json
  def show
  end

  # GET /enrolements/new
  def new
    @enrolement = Enrolement.new
  end

  # GET /enrolements/1/edit
  def edit
  end

  # POST /enrolements
  # POST /enrolements.json
  def create
    @enrolement = Enrolement.new(enrolement_params)

    respond_to do |format|
      if @enrolement.save
        format.html { redirect_to @enrolement, notice: 'Enrolement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @enrolement }
      else
        format.html { render action: 'new' }
        format.json { render json: @enrolement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrolements/1
  # PATCH/PUT /enrolements/1.json
  def update
    respond_to do |format|
      if @enrolement.update(enrolement_params)
        format.html { redirect_to @enrolement, notice: 'Enrolement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @enrolement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolements/1
  # DELETE /enrolements/1.json
  def destroy
    @enrolement.destroy
    respond_to do |format|
      format.html { redirect_to enrolements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrolement
      @enrolement = Enrolement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrolement_params
      params.require(:enrolement).permit(:grade)
    end
end
