class Term < ActiveRecord::Base
  has_many :terms_partners
  has_many :partners, through: :terms_partners, source: :holder, source_type: 'Partner'
  has_many :super_partners, through: :terms_partners, source: :holder, source_type: 'SuperPartner'

  def update_partners(new_partner_array)
    update_holders(partner_ids, new_partner_array, :Partner, partners, Partner)
  end

  def update_super_partners(new_sp_array)
    update_holders(super_partner_ids, new_super_partner_array, :SuperPartner, super_partners, SuperPartner)
  end

  def remove_partner(partner_id)
    remove_holder(partner_id, :Partner)
  end

  def remove_super_partner(super_partner_id)
    remove_holder(super_partner_id, :SuperPartner)
  end

  private
    def update_holders(old_holder_array, new_holder_array, type, collection, source)
      new_holder_array.map! { |i| i.to_i } # arrays from a html form are a string

      old_holder_array.each do |i|
        remove_holder(i, type) unless new_holder_array.include? i
      end

      new_holder_array.each do |j|
        new_holder = source.find_by_id(j)
        collection << new_holder unless new_holder.nil? || old_holder_array.include?(j)
      end
    end

    def remove_holder(id, type)
      terms_partners.where(holder_id: id, holder_type: type).delete_all
    end
end
