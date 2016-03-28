class CreatePublisherTable < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :website
      t.string :city
      t.string :state
    end
  end
end
