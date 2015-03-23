# == Schema Information
#
# Table name: risk_profiles
#
#  id                       :integer          not null, primary key
#  user_id                  :integer
#  annual_income            :integer
#  other_retirement_savings :integer
#  investment_type_id       :integer
#  investment_choice_id     :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class RiskProfile < ActiveRecord::Base
	belongs_to :investment_type
	belongs_to :investment_choice

	validates :annual_income, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	validates :other_retirement_savings, numericality: { only_integer: true, greater_than_or_equal_to: 0,:allow_nil => true }
end
