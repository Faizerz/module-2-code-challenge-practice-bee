class BeesController < ApplicationController
  def index
    @bees = Bee.all
  end

  def show
    @bee = Bee.find(params[:id])
  end

  def edit
    @bee = Bee.find(params[:id])
  end

  def update
    @bee = Bee.find(params[:id])
    @bee.update(bee_params)
    redirect_to @bee
  end

  private

  def bee_params
    params.require(:bee).permit(:name, :queen, :hive_id)
  end
end
