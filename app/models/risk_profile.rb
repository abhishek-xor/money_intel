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
end
