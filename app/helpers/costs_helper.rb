module CostsHelper
def costs_total
	arr= []
     
	 arr.push(current_user.costs.sum (:amount))
	 return arr
	end

 

end
