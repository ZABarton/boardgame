class CreateReviewsTable < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :score
      t.string  :notes
      t.timestamps
    end
  end
end
