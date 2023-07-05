class ExpenseController < ApplicationController
  def index
    @expenses = Expense.all.order(created_at: :asc)
  end

  def new
    @expense = Expense.new
  end
  
  def create
    @expense = Expense.new(
      author_id: current_user.id,
      name: expense_params[:name],
      amount: expense_params[:amount]
    )

    respond_to do |format|
      if @expense.save
        format.html { redirect_to expense_path(@expense), notice: "Expense Created Succesfuly" }
      else
        format.html { render :new, status: :unprocessable_entity, alert: "Something went wrong" }
      end
    end
    
  end
  

  def add_group
    @expense = Group.find(params[:id])
    @group = Group.find(params[:id])
    @expense.add_unique_group(@group)
    redirect_to group_path(@group)
  end

  private

  def expense_params 
    params.require(:expense).permit(:name, :amount)
  end
end
