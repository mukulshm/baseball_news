class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.string :path
      t.integer :platform_id
      t.integer :team_id

      t.timestamps

    end
  end
end
