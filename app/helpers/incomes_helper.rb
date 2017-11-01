module IncomesHelper

	def incomes_total 
	arr= []
     
	 arr.push(current_user.incomes.sum (:amount))
	 return arr
	end
end
