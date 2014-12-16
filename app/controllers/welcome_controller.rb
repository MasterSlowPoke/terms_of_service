class WelcomeController < ApplicationController
  def index
    @partners = Partner.all
    @super_partners = SuperPartner.all

    @partner = Partner.find_by_id(params[:partner_id]) if params[:partner_id]
    @partner = SuperPartner.find_by_id(params[:super_partner_id]) if params[:super_partner_id]
    @term = @partner.latest_term if @partner
  end
end
