class AddIssuedToIncome < ActiveRecord::Migration[5.0]
  def change
    add_column :incomes, :issued, :datetime
  end
end
