class CreateSuperPartners < ActiveRecord::Migration
  def change
    create_table :super_partners do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
