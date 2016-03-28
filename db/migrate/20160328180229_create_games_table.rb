class CreateGamesTable < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.integer :publisher_id
      t.integer :min_players
      t.integer :max_players
      t.integer :avg_time
      t.timestamps
    end
  end
end
