class ChangeOptionsForIssue < ActiveRecord::Migration[5.1]
  def change
    change_column(:joblistings, :issue, :string, :null => true)
  end
end
