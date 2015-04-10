require 'spec_helper'

describe User do
  it "has valid factory" do
    user = build(:user)
    expect(user).to be_valid
  end

  describe "associated_contacts" do
    before :each do
      @user = create(:user)

      User.class_eval do
        has_hashable_contacts
      end
    end

    it "includes user whos mobile is into your contacts list" do
      contact = create(:contact, user: @user, token: "5ce4263e29fef59be7439efa89828c7dfc55e1e1048a3f0675e1b4013f2aeb19")
      user = create(:user, hashed_mobile: "5ce4263e29fef59be7439efa89828c7dfc55e1e1048a3f0675e1b4013f2aeb19")
      expect(@user.associated_contacts).to include user
    end

    it "doesn't include user whos mobile is not in your contacts list" do
      contact = create(:contact, user: @user, token: "5ce4263e29fef59be7439efa89828c7dfc55e1e1048a3f0675e1b4013f2aeb19")
      user = create(:user, hashed_mobile: "c62c51b0a82c7693cd1ff8628e63d7e4b777ceea5715f125763bf2f40cfe1416")
      expect(@user.associated_contacts).to_not include user
    end
  end
end
