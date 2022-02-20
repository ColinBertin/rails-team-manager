class TeamsController < ApplicationController
  before_action :set_sport, only: [:new, :create]

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    raise
    @team = Team.new(team_params)
    @team.sport = @sport
    # if @team.save
    #   # redirect_to sport_path(@team.sport)
    # else
    #   render :new
    # end
  end

  def edit
  end

  private

  def set_sport
    @sport = Sport.find_by(id: params[:list_id])
  end

  def team_params
    params.require(:team).permit(:name, :gender, :location)
  end
end
