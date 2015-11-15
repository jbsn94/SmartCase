class TableUsersUpdate3 < ActiveRecord::Migration
  def change
    add_column :users, :tipo, :string
  end
end
