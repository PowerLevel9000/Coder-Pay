class GroupController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create 
    @group = Group.new(
      user_id: current_user.id,
      name: group_params[:name]
    )
    
    respond_to do |format|
      if @group.save 
        format.html { redirect_to group_index_path, notice: 'Group was successfully created.'}
      else
        format.html { render :new, status: :unprocessable_entity, alert: "Something went wrong" }
      end
    end
  end

  private 

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
