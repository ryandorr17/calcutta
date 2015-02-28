class AddSeedToEntrants < ActiveRecord::Migration
  def change
    add_column :entrants, :seed, :integer
  end
end
