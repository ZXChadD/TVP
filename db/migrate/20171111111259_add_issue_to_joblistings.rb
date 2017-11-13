class AddIssueToJoblistings < ActiveRecord::Migration[5.1]
  def change
    add_column :joblistings, :budget, :string
    add_column :joblistings, :timings, :string

  end
end
