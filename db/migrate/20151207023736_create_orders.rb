class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :user, index: true
      t.column :title, :string
      t.column :local, :string
      t.column :description, :text
      t.column :status, :string
      t.column :created_at, :datetime, null: false
      t.column :updated_at, :datetime, null: false
    end
  end
end
