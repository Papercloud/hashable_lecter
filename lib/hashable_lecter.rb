require "hashable_lecter/engine"

module HashableLecter
  extend ActiveSupport::Autoload

  autoload :HasHashableContacts, 'hashable_lecter/has_hashable_contacts'

  def self.setup
    yield self
  end
end

module ActiveRecord
  class Base
    include HashableLecter::HasHashableContacts
  end
end