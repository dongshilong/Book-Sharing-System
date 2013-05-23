class CreateCircles < ActiveRecord::Migration
  def change
    create_table :circles do |t|
      t.string :name
      t.string :logo
      t.string :introduction
      t.integer :owner_id

      t.timestamps
    end
  end
end
