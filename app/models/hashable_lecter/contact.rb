class HashableLecter::Contact < ActiveRecord::Base

  self.table_name = "hashable_lecter_contacts"

  belongs_to :user
end