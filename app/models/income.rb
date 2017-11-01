class Income < ApplicationRecord
	has_many :category_incomes
	has_many :categories, through: :category_incomes

	belongs_to :user
	validates_presence_of :amount

end



