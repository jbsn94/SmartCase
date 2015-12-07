class AddTitleOrders < ActiveRecord::Migration
  def change
      add_column :orders, :title, :string 
  end
end
