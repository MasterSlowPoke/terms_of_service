class CreateTermsPartners < ActiveRecord::Migration
  def change
    create_table :terms_partners do |t|
      t.references :holder, polymorphic: true
      t.references :term

      t.timestamps
    end
  end
end
