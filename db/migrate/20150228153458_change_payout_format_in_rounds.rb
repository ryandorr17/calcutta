class ChangePayoutFormatInRounds < ActiveRecord::Migration
  def change
    change_column :rounds, :payout, :float
  end
end
