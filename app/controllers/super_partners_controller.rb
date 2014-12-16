class SuperPartnersController < ApplicationController
  before_action :set_super_partner, only: [:show, :edit, :update, :destroy]

  # GET /super_partners
  # GET /super_partners.json
  def index
    @super_partners = SuperPartner.all
  end

  # GET /super_partners/1
  # GET /super_partners/1.json
  def show
  end

  # GET /super_partners/new
  def new
    @super_partner = SuperPartner.new
  end

  # GET /super_partners/1/edit
  def edit
  end

  # POST /super_partners
  # POST /super_partners.json
  def create
    @super_partner = SuperPartner.new(super_partner_params)

    respond_to do |format|
      if @super_partner.save
        format.html { redirect_to @super_partner, notice: 'Super partner was successfully created.' }
        format.json { render :show, status: :created, location: @super_partner }
      else
        format.html { render :new }
        format.json { render json: @super_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /super_partners/1
  # PATCH/PUT /super_partners/1.json
  def update
    respond_to do |format|
      if @super_partner.update(super_partner_params)
        format.html { redirect_to @super_partner, notice: 'Super partner was successfully updated.' }
        format.json { render :show, status: :ok, location: @super_partner }
      else
        format.html { render :edit }
        format.json { render json: @super_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_partners/1
  # DELETE /super_partners/1.json
  def destroy
    @super_partner.destroy
    respond_to do |format|
      format.html { redirect_to super_partners_url, notice: 'Super partner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_partner
      @super_partner = SuperPartner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def super_partner_params
      params.require(:super_partner).permit(:name, :code)
    end
end
