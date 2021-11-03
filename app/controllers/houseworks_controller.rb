class HouseworksController < ApplicationController
  before_action :set_housework, only: [:show, :edit, :update, :destroy]

  def index
    @housework = Housework.all
  end

  def new
    @housework = Housework.new
  end

  def create
    @housework = Housework.new(housework_params)
    if @housework.save
      redirect_to houseworks_path
    else
        render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @housework.update(housework_params)
       redirect_to housework_path(@housework.id)
    else
      render :edit
    end
  end

  def destroy
    if @housework.destroy
     redirect_to houseworks_path
    end
  end

  def search
    @houseworks = Housework.search(params[:keyword])
  end

  private

  def housework_params
    params.require(:housework).permit(:title, :manner)
  end

  def set_housework
    @housework = Housework.find(params[:id])
  end

end
