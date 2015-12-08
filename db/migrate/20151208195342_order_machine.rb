class OrderMachine < ActiveRecord::Migration
  def change
    add_column :orders, :machine_id, :string
  end
end
