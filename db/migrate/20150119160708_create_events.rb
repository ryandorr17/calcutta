class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :sport
      t.string :league
      t.date :start_date
      t.datetime :cutoff

      t.timestamps
    end
  end
end
