class AlterOrderMachine < ActiveRecord::Migration
  def change
    rename_column :orders, :machine_id, :machineID
  end
end
