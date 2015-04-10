class AddHashedNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :hashed_mobile, :string
    add_index  :users, :hashed_mobile
  end
end

