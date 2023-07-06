require 'rails_helper'

RSpec.describe 'Expenses', type: :system do
  before :all do
    if User.find_by(name: 'Adarsh Pathak').present?
      @user = User.find_by(name: 'Adarsh Pathak')
    else
      data
      puts "\n ********************************************************"
      puts '           Please Try Again As Data is Loaded              '
      puts "*********************************************************\n"
    end
  end

  it 'User can see there Expense on the page but not others' do
    log_in_adarsh
    click_link 'All Expenses'
    @user.expenses.each do |expense|
      expect(page).to have_content(expense.name)
      expect(page).to have_content(expense.added_group)
    end
    expect(page).not_to have_content('Enjoyment')
  end

  it 'allows adding expenses from the show page' do
    log_in_adarsh
    click_link 'Electric'
    click_button 'Add Expense'
    expect(page).to have_content('x-box')
    find_button('x-box').click
    expect(page).to have_content('Expense updated Successfully')
  end
end
