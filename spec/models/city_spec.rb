require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do 
    @city = City.create(name: "lille")
  end

  context "validation" do


    describe "#first_name" do
      it "should not be valid without first_name" do
        city = City.create(name: "lille")
        expect(city).not_to be_valid
        expect(city.errors.include?(:name)).to eq(true)
      end
    end

    describe "#last_name" do
      it "should not be valid without last_name" do
        city = City.create(name: "lille")
        expect(city).not_to be_valid
        expect(city.errors.include?(:name)).to eq(true)
      end
    end

  end

end