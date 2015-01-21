class CreateEntrants < ActiveRecord::Migration
  def change
    create_table :entrants do |t|
      t.string :name
      t.integer :order
      t.references :event, index: true

      t.timestamps
    end
  end
end
