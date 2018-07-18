class Api::V1::PracticesController < ApplicationController
  def index
    @practices = Practice.all
    render json: @practices
  end

  def create
    @practice = Practice.new(get_params)
    @practice.save
  end

  def update
    @practice = Practice.find(params[:id])
    @practice.update(get_params)
    @practice.save
  end

  def delete
    @practice = Practice.find(params[:id])
    @practice.destroy
  end

  def show
    @practice = Practice.find(params[:id])
    render json: @practice
  end

  private

  def get_params
    params.require(:practice).permit(:name, :location)
  end

end
