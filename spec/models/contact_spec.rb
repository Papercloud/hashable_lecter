require 'spec_helper'

module HashableLecter
  describe Contact do
    it "has valid factory" do
      contact = build(:contact)
      expect(contact).to be_valid
    end
  end
end