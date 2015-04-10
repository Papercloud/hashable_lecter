class CreateHashableLecterContacts < ActiveRecord::Migration
  def change
    create_table :hashable_lecter_contacts do |t|
      t.integer :user_id
      t.string :token
      t.timestamps
    end

    add_index :hashable_lecter_contacts, :token
  end
end
