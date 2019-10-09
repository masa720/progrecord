require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without a last_name" do
      user = User.new(last_name: "", first_name: "hoge", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:last_name]).to include("can't be blank")
    end
    
    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
  end
end