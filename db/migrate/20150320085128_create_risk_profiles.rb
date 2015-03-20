class CreateRiskProfiles < ActiveRecord::Migration
  def change
    create_table :risk_profiles do |t|
      t.integer :user_id
      t.integer :annual_income
      t.integer :other_retirement_savings
      t.integer :investment_type_id
      t.integer :investment_choice_id

      t.timestamps null: false
    end
    add_index :risk_profiles, :user_id
  end
end
