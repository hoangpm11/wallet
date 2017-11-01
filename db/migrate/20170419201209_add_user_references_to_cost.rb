class AddUserReferencesToCost < ActiveRecord::Migration[5.0]
  def change
  	add_reference :costs, :user, index: true
  end
end




