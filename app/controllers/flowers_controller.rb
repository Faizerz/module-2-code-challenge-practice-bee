class FlowersController < ApplicationController
  def index
    @flowers = Flower.all
  end

  def show
    @flower = Flower.find(params[:id])
  end

  def new
    @flower = Flower.new
  end

  def create
    @flower = Flower.new(flower_params)
    if @flower.valid?
      @flower.save
      params[:flower][:bee_ids].each do |b_id|
        Flight.create(flower_id: @flower.id, bee_id: b_id)
      end
      redirect_to @flower
    else
      render :new
    end
  end

  private

  def flower_params
    params.require(:flower).permit(:name, :pollen_capacity)
  end
end
