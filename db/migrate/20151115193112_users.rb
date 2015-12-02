class Users < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.column :name, :string
      t.column :email, :string
      t.column :cpf, :string
      t.column :password_digest, :string
      t.column :tipo, :string
    end
    create_table(:machines) do |t|
      t.column :tipping, :string
      t.column :description, :text
      t.column :model, :string
      t.column :created_at, :datetime, null: false
      t.column :updated_at, :datetime, null: false
    end
  end
end
