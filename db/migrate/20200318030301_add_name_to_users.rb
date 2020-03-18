class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :identification_type, :boolean, default: false
    add_column :users, :identification_number, :bigint
  end
end
