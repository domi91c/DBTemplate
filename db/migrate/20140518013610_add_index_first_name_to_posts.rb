class AddIndexFirstNameToUsers < ActiveRecord::Migration
  def change
    add_index :users, :first_name, :string
  end
end
