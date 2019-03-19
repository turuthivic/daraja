class Sale < ApplicationRecord
	scope :sales_today ~> { where (date: => Date.today)}
	belongs_to :user
end
