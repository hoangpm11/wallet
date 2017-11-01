class CreateCategoryIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :category_incomes do |t|
      t.references :category, foreign_key: true
      t.references :income, foreign_key: true

      t.timestamps
    end
  end
end
