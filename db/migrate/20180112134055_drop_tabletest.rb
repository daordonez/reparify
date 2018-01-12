class DropTabletest < ActiveRecord::Migration[5.1]
  def change
  	drop_table :tests
  	drop_table :mintests
  	drop_table :mintests_tests
  end
end
