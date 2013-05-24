class CirclesUsers < ActiveRecord::Migration
  def up
    create_table 'circles_users', :id => false do |t|
      t.column :circle_id, :integer
      t.column :user_id, :integer
    end
  end
end
