class ChangeOptionsForDate < ActiveRecord::Migration[5.1]
  def change
    change_column(:joblistings, :date, :string, :null => true)
    change_column(:joblistings, :time, :string, :null => true)

  end
end
