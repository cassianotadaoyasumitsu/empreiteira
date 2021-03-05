class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :gender, :string
    add_column :users, :age, :string
    add_column :users, :nihongo, :string
    add_column :users, :note, :string
    add_column :users, :subdomain, :string, uniq: true, null: false, default: ""
  end
end
