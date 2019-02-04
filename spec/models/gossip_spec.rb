require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do 
    @gossip = Gossip.create(title: "yoyo", content: "blabla")
  end

  context "validation" do


    describe "#first_name" do
      it "should not be valid without first_name" do
        gossip = Gossip.create(title: "yoyo")
        expect(gossip).not_to be_valid
        expect(gossip.errors.include?(:title)).to eq(false)
      end
    end

    describe "#last_name" do
      it "should not be valid without last_name" do
        gossip = Gossip.create(content: "blabla")
        expect(gossip).not_to be_valid
        expect(gossip.errors.include?(:content)).to eq(false)
      end
    end

  end

end