class HouseworksController < ApplicationController

  def index
    @housework = Housework.all.order('created_at DESC')
  end

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

  def show
    @housework = Housework.find(params[:id])
  end

  private

  def housework_params
    params.require(:housework).permit(:title, :manner)
  end

end
