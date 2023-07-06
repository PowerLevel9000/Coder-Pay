require 'rails_helper'

RSpec.describe Expense, type: :model do
  before :all do   
    if User.find_by(name: "Adarsh Pathak").present?
      @user = User.find_by(name: "Adarsh Pathak")
      @expense = Expense.find_by(name: "football")
    else
      data
      puts "\n ********************************************************"
      puts "           Please Try Again As Data is Loaded              "
      puts "*********************************************************\n"
    end
  end
  describe "Group Model Validation" do 
    
    it "Name should not have name blank or nil" do
      @expense.name = nil
      expect(@expense).not_to be_valid
      @expense.name = ''
      expect(@expense).not_to be_valid
    end
    
    it "Amount should not have name blank or nil" do
      @expense.amount = nil
      expect(@expense).not_to be_valid
      @expense.amount = ''
      expect(@expense).not_to be_valid
    end
    
    it "Amount should not be less than 0" do
      @expense.amount = -5
      expect(@expense).not_to be_valid
    end
  end

  describe "Expense Model Methods" do

    it " Should associated with many to many with category " do
      group = Group.find_by(name: "Electric")
      group_two = Group.find_by(name: "House")
      @expense.add_unique_group(group)
      @expense.add_unique_group(group_two)
      expect(@expense.groups.length).to eq(2)  
    end
    
    it "should print the total category expense belong"  do
      expect(@expense.added_group).to eq(2)
    end
  end
end
