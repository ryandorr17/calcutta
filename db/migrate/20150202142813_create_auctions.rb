class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :name
      t.integer :number_participants
      t.datetime :start
      t.integer :event_id
      t.integer :soft_cap

      t.timestamps
    end
  end
end
