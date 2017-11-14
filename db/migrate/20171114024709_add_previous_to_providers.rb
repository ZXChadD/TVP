class AddPreviousToProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :experience_consulting, :string
    add_column :providers, :previous, :string
    add_column :providers, :daily, :string
    add_column :providers, :industry, :string
  end
end
