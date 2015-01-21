class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :name
      t.integer :event_id
      t.integer :order
      t.float :payout

      t.timestamps
    end
  end
end
