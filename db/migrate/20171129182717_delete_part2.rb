class DeletePart2 < ActiveRecord::Migration[5.1]
  def change
  	drop_table :parts
  end
end
