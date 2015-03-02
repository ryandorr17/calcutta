class CreateAuctionParticipants < ActiveRecord::Migration
  def change
    create_table :auction_participants do |t|
      t.integer :auction_id
      t.integer :user_id
      t.boolean :owner_flag

      t.timestamps
    end
  end
end
