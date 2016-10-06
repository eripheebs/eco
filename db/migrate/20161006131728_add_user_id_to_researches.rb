class AddUserIdToResearches < ActiveRecord::Migration
  def change
    add_reference :researches, :user, index: true, foreign_key: true
  end
end
