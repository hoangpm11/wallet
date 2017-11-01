class AddUserReferencesToIncome < ActiveRecord::Migration[5.0]
  def change
  	add_reference :incomes, :user, index: true
  end
end

