class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
    @food = Food.find(params[:id])
  end

  def new
  end

  def create

    Food.create(name: params[:name], calories: params[:calories])
    redirect_to foods_path
  end

  def update
    Food.update(params[:id], name: params[:name], calories: params[:calories])
    redirect_to food_path(params[:id])
  end


  def delete
    Food.find(params["id"]).destroy
    redirect_to foods_path
  end
end
