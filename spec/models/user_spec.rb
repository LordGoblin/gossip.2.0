require 'rails_helper'

RSpec.describe City, type: :model do

  before(:each) do 
    @user = User.create(first_name: "John", last_name: "Doe")
  end

  context "validation" do


    describe "#first_name" do
      it "should not be valid without first_name" do
        bad_user = User.create(last_name: "Doe")
        expect(bad_user).not_to be_valid
        expect(bad_user.errors.include?(:first_name)).to eq(false)
      end
    end

    describe "#last_name" do
      it "should not be valid without last_name" do
        bad_user = User.create(first_name: "John")
        expect(bad_user).not_to be_valid
        expect(bad_user.errors.include?(:last_name)).to eq(false)
      end
    end

  end

end