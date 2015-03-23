# == Schema Information
#
# Table name: investment_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InvestmentType < ActiveRecord::Base
end
