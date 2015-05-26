class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :path
      t.integer :team_id

      t.timestamps

    end
  end
end
