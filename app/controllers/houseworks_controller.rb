class HouseworksController < ApplicationController
  def new
    @housework = Housework.new
  end

  def create
    @housework = Housework.new(housework_params)
    if @housework.save
      redirect_to root_path
    else
        render :new
    end
  end

  private

  def housework_params
    params.require(:housework).permit(:title, :manner)
  end

end
