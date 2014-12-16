module Termsable
  extend ActiveSupport::Concern

  included do
    has_many :terms_partners, as: :holder
    has_many :terms, through: :terms_partners
  end

  def terms_desc
    terms.order(date_start: :desc)
  end

  def latest_term
    terms_desc.first || Term.new(text: "No terms of service")
  end
end