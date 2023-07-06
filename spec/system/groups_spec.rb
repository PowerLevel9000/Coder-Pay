require 'rails_helper'

RSpec.describe "Groups", type: :system do
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
  
  it "User can see there Catogary on the page but not others" do
    log_in_adarsh
    @user.groups.each do |group|
      expect(page).to have_content(group.name)
      expect(page).to have_content(group.group_expense)
    end
    expect(page).not_to have_content("Enjoyment")
  end

  it "Category Page Should have button or link for Add Category for user" do
    log_in_adarsh
    expect(page).to have_content('Add Category')
    click_link 'Add Category'
    expect(page).to have_content('Add Category')
  end

  it "Category Show Page have 'Add' and 'back' Button and 'there expenses name and amount'" do
    log_in_adarsh
    @shoping = shoping_expense
    click_link 'shoping'
    expect(page).to have_content('Back')
    expect(page).to have_content('Add Expense')
    expect(page).to have_content('shoping')
    expect(page).to have_content(@shoping.group_expense)
    @shoping.expenses.each do |expense|
      expect(page).to have_content(expense.name)
      expect(page).to have_content(expense.amount)
    end
  end

  it "allows adding expenses from the show page" do 
    log_in_adarsh
    click_link 'Electric'
    click_button 'Add Expense'
    expect(page).to have_content('x-box')
    find_button('x-box').click
    expect(page).to have_content('Expense updated Successfully')
  end
  
end
