class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :order, index: true
      t.column :description, :text
      t.column :created_at, :datetime, null: false
      t.column :updated_at, :datetime, null: false

    end
  end
end
