class RemoveFixtureFromJoblistings < ActiveRecord::Migration[5.1]
  def change
    remove_column :joblistings, :fixture
    remove_column :joblistings, :num_fixture
    remove_column :joblistings, :housing
    remove_column :joblistings, :job_address
  end
end
