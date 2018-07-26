class Api::V1::TeamsController < ApplicationController

  def index
    @teams = Team.all
    render json: @teams.uniq
  end

  def create
    @team = Team.new(get_params)
    @team.save
  end

  def update
    @team = Team.find(params[:id])
    @team.update(get_params)
    @team.save
  end

  def delete
    @team = Team.find(params[:id])
    @team.destroy
  end

  def show
    @team = Team.find(params[:id])
    render json: @team
  end

  private

  def get_params
    params.require(:team).permit(:name, :source)
  end

end
