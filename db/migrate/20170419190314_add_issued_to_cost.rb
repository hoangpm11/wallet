class AddIssuedToCost < ActiveRecord::Migration[5.0]
  def change
    add_column :costs, :issued, :datetime
  end
end
