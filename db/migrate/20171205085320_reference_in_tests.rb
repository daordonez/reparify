class ReferenceInTests < ActiveRecord::Migration[5.1]
  def change
  	add_reference :builds, :test, index: true , foreign_key: true
  end
end
