class AddBuildToTests < ActiveRecord::Migration[5.1]
  def change
    add_reference :tests, :build, foreign_key: true
  end
end
