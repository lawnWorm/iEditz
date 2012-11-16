class CreatePushBunnies < ActiveRecord::Migration
  def change
    create_table :push_bunnies do |t|
      t.string :name
      t.string :task

      t.timestamps
    end
  end
end
