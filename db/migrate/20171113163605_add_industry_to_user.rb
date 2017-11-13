class AddIndustryToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :company, :string
    add_column :users, :industry, :string
  end
end
