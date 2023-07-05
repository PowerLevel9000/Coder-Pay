require 'rails_helper'

RSpec.describe User, type: :model do
  before :all do   
    if User.find_by(name: "Adarsh Pathak").present?
      @user = User.find_by(name: "Adarsh Pathak")
    else
      data
      puts "\n ********************************************************"
      puts "           Please Try Again As Data is Loaded              "
      puts "*********************************************************\n"
    end
  end

  describe "Validation" do

    it "Name can't be blank or nil" do
      @user.name = nil
      expect(@user).not_to be_valid
      @user.name = ''
      expect(@user).not_to be_valid
    end

    it "Name should be greater 2 and smaller than 250 Char" do
      @user.name = "A"
      expect(@user).not_to be_valid
      @user.name  = "A" * 251
      expect(@user).not_to be_valid
    end

    it "Email should not be nil or blank" do
      @user.email = nil
      expect(@user).not_to be_valid
      @user.email = ''
      expect(@user).not_to be_valid
    end
  end
end
