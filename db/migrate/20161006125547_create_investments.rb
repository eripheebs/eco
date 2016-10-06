class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.string :industry
      t.string :description
      t.string :title
      t.string :ngo
      t.string :contact_email

      t.timestamps null: false
    end
  end
end
