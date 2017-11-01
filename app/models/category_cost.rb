class CategoryCost < ApplicationRecord
  belongs_to :category
  belongs_to :cost
end
