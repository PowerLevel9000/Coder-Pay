require "./spec/spec_helper"
def data
    @user_one = User.create(name: "Adarsh Pathak", email: "adarsh.pathak@example.com", password: 123456)
    @user_two = User.create(name: "Shubham Pathak", email: "shubham.pathak@example.com", password: 123456)
    @expense_one = Expense.create(name: "Shirt", amount: 10, author_id: @user_one.id)
    @expense_two = Expense.create(name: "pant", amount: 15, author_id: @user_one.id)
    @expense_three = Expense.create(name: "football", amount: 20, author_id: @user_one.id)
    @expense_four = Expense.create(name: "x-box", amount: 300, author_id: @user_one.id)
    @expense_five = Expense.create(name: "Renovation of Home", amount: 10000, author_id: @user_one.id)
    @group_one = Group.create(name: "shoping", icon: "Cart", user_id: @user_one.id)
    @group_one = Group.create(name: "Electric", icon: "Bulb", user_id: @user_one.id)
    @group_one = Group.create(name: "House", icon: "home", user_id: @user_one.id)
end

# data