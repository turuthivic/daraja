class SalePolicy < ApplicationPolicy 
	class Scope < Scope
		def resolve
		  if user.admin?
		  	scope.all
		  else
		    scope.where(sales_today: true) 
		  end
		end
	end

	def update?
	  user.admin? 
	end
end
