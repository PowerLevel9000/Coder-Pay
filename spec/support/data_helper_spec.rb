require './spec/spec_helper'
def data
  @user_one = User.create(name: 'Adarsh Pathak', email: 'adarsh.pathak@example.com', password: 123_456)
  @user_two = User.create(name: 'Shubham Pathak', email: 'shubham.pathak@example.com', password: 123_456)
  @expense_one = Expense.create(name: 'Shirt', amount: 10, author_id: @user_one.id)
  @expense_two = Expense.create(name: 'pant', amount: 15, author_id: @user_one.id)
  @expense_three = Expense.create(name: 'football', amount: 20, author_id: @user_one.id)
  @expense_four = Expense.create(name: 'x-box', amount: 300, author_id: @user_one.id)
  @expense_five = Expense.create(name: 'Renovation of Home', amount: 10_000, author_id: @user_one.id)
  @group_one = Group.create(name: 'shoping', icon: 'Cart', user_id: @user_one.id)
  @group_one = Group.create(name: 'Electric', icon: 'Bulb', user_id: @user_one.id)
  @group_one = Group.create(name: 'House', icon: 'home', user_id: @user_one.id)
  @group_shubham = Group.create(name: 'Enjoyment', icon: 'enjoy', user_id: @user_two.id)
  @group_shubham = Expense.create(name: 'Enjoyment', amount: 50, author_id: @user_two.id)
end

# log in

def log_in_adarsh
  visit root_path
  click_link 'Log in'
  fill_in 'Email',	with: 'adarsh.pathak@example.com'
  fill_in 'Password',	with: 123_456
  click_button 'Log in'
end

def category_xbox
  @category_one = Group.find_by(name: 'Electric')
  @category_two = Group.find_by(name: 'shoping')
  @xbox = Expense.find_by(name: 'x-box')
  @xbox.add_unique_group(@category_one)
  @xbox.add_unique_group(@category_two)
  @xbox
end

def shoping_expense
  @shoping = Group.find_by(name: 'shoping')
  @xbox = Expense.find_by(name: 'x-box')
  @shirt = Expense.find_by(name: 'Shirt')
  @pant = Expense.find_by(name: 'pant')
  @football = Expense.find_by(name: 'football')
  @shoping.add_unique_expense(@xbox)
  @shoping.add_unique_expense(@shirt)
  @shoping.add_unique_expense(@pant)
  @shoping.add_unique_expense(@football)
  @shoping
end
