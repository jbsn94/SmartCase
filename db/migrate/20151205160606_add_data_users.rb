class AddDataUsers < ActiveRecord::Migration
  def change
    add_column :users, :created_at, :date 
  end
end
