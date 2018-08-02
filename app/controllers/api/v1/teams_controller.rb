class Api::V1::TeamsController < ApplicationController

  def index
    @teams = Team.all
    render json: @teams
  end

  def create
    # create a team
    # find user by id @user = User.find_by(id: params['userIds'][0])
    # create the association
    # @team.users << @user
    @team = Team.new(get_params)

    @team.save
    render json: @team #{allTeams: @teams, newTeam: @team}
  end

  def update
    @team = Team.find(params[:id])
    @team.update(get_params)
    @team.save
    @teams = Team.all
    render json: {allTeams: @teams, newTeam: @team}
  end

  def destroy
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
