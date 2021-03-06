class Api::V1::ShowsController < ApplicationController

  def index
    @shows = Show.all
    render json: @shows
  end

  def create
    @show = Show.new(get_params)
    @show.save
    render json: @show
  end

  def update
    @show = Show.find(params[:id])
    @show.update(get_params)
    @show.save
    @shows = Show.all
    render json: {allShows: @shows, newShow: @show}
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
  end

  def show
    @show = Show.find(params[:id])
    render json: @show
  end

  private

  def get_params
    params.require(:show).permit(:name, :location, :source)
  end

end
