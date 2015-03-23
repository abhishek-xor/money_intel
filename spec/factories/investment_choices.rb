# == Schema Information
#
# Table name: investment_choices
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :investment_choice do
    name "MyString"
  end

end
