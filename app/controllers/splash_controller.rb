class SplashController < ApplicationController
  def index
    if user_signed_in?
      redirect_to group_index_path
    end
  end
end
