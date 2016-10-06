class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :topic
      t.string :description

      t.timestamps null: false
    end
  end
end
