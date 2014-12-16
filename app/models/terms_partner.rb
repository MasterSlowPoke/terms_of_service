class TermsPartner < ActiveRecord::Base
  belongs_to :term
  belongs_to :holder, polymorphic: true
end
