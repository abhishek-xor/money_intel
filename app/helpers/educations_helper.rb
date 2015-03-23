module EducationsHelper

	def investment_type_selection(id)
		return id unless id.blank?
		InvestmentType.all.first.id 
	end

	def investment_choice_selection(id)
		return id unless id.blank?
	 	InvestmentChoice.all.first.id 
	end
end
