class ChangeReferencesFabricante < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :manufacturers, :famiily , index: true, foreign_key: true
  end
end
