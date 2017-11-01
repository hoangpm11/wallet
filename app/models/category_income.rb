class CategoryIncome < ApplicationRecord
  belongs_to :category
  belongs_to :income
end
