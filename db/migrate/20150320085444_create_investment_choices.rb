class CreateInvestmentChoices < ActiveRecord::Migration
  def change
    create_table :investment_choices do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
