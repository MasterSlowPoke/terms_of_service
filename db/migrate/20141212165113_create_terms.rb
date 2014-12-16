class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.datetime :date_start
      t.datetime :date_end
      t.text :text
      t.text :change_message

      t.timestamps
    end
  end
end
