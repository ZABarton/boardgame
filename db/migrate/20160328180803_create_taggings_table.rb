class CreateTaggingsTable < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :game_id
      t.integer :tag_id
      t.timestamps
    end
  end
end
