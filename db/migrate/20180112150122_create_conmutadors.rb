class CreateConmutadors < ActiveRecord::Migration[5.1]
  def change
    create_table :conmutadors do |t|

      t.timestamps
    end
  end
end
