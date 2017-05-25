require 'rails_helper'

RSpec.describe User do
  describe "validations" do
    context "valid attributes" do
      it "is valid with all attributes" do
        user = create(:user)

        expect(user).to be_valid
      end

      it "has a unique name" do
        user = User.create(username: "cthulhu", email:"d@gmail.com", password: "wp")
        user2 = User.create(username: "cthulhu", email:"d@gmail.com", password: "wp")

        expect(user2).to be_invalid
      end
    end

    context "invalid attributes" do
      it "is invalid without a name" do
        user = User.new()

        expect(user).to be_invalid
      end
    end
  end

  xit "can create a default user" do
    user = create(:user)

    expect(user.role).to eq("default")
  end
end
