class AddUserIdToInvestments < ActiveRecord::Migration
  def change
    add_reference :investments, :user, index: true, foreign_key: true
  end
end
