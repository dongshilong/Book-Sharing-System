# -*- encoding : utf-8 -*-
class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :isbn
      t.string :title
      t.string :email
      t.string :phone
      t.string   :isbn
      t.string   :title
      t.string   :summary
      t.string   :cover
      t.string   :doubanURL
      t.integer  :state
      t.string   :location
      t.datetime :created_at,     :null => false
      t.datetime :updated_at,     :null => false
    end
  end
end