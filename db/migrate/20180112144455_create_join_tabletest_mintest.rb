class CreateJoinTabletestMintest < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tests, :mintests do |t|
      # t.index [:test_id, :mintest_id]
      # t.index [:mintest_id, :test_id]
    end
  end
end
