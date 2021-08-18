class AddMoreFieldsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :website, :string
    add_column :users, :bio, :text
    add_column :users, :phone, :integer
    add_column :users, :gender, :string
  end

  def self.down
    remove_column :users, :gender
    remove_column :users, :phone
    remove_column :users, :bio
    remove_column :users, :website
    remove_column :users, :name
    remove_column :users, :username
  end
end
