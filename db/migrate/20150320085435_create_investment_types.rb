class CreateInvestmentTypes < ActiveRecord::Migration
  def change
    create_table :investment_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
