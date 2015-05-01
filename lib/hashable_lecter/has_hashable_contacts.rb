module HashableLecter
  module HasHashableContacts
    extend ActiveSupport::Concern

    included do
      def associated_contacts
        #users that are in your contacts that are also in the app
        contact_tokens = contacts.map(&:token)
        self.class.where('hashed_mobile IN (?) OR hashed_email IN (?)', contact_tokens, contact_tokens)
      end
    end

    module ClassMethods
      def has_hashable_contacts(options = {})
        has_many :contacts, foreign_key: options[:foreign_key] || :user_id, class_name: HashableLecter::Contact
      end
    end
  end
end