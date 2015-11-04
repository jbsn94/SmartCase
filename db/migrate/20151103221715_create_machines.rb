class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :tipping
      t.text :description
      t.string :model

      t.timestamps null: false
    end
  end
end
