require 'rails_helper'

RSpec.describe Group, type: :model do
  before :all do   
    if User.find_by(name: "Adarsh Pathak").present?
      @user = User.find_by(name: "Adarsh Pathak")
      @group = Group.find_by(name: "Electric")
    else
      data
      puts "\n ********************************************************"
      puts "           Please Try Again As Data is Loaded              "
      puts "*********************************************************\n"
    end
  end

  describe "Group Model Validation" do 
    
    it "Name should not have name blank or nil" do
      @group.name = nil
      expect(@group).not_to be_valid
      @group.name = ''
      expect(@group).not_to be_valid
    end
    
    it "Icon should not have name blank or nil" do
      @group.icon = nil
      expect(@group).not_to be_valid
      @group.icon = ''
      expect(@group).not_to be_valid
    end
  end

  describe "Group Model Methods" do

    it " Should associated with many to many with expense " do
      expense = Expense.find_by(name: "Shirt")
      expense_two = Expense.find_by(name: "pant")
      @group.add_unique_expense(expense)
      @group.add_unique_expense(expense_two)
      expect(@group.expenses.length).to eq(2)  
    end
    
    it "should print the total group expense i.e '10 + 15'" do
      expect(@group.group_expense).to eq(10 + 15)
    end
  end
  
end
