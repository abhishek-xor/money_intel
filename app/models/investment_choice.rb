# == Schema Information
#
# Table name: investment_choices
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InvestmentChoice < ActiveRecord::Base
end
