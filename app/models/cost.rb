class Cost < ApplicationRecord
	has_many :category_costs
	has_many :categories, through: :category_costs

	belongs_to :user
	validates_presence_of :amount
end



