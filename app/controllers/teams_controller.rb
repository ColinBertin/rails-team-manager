class TeamsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ] # :show if we want to
  before_action :set_sport, only: [:new, :create]

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    authorize @team
  end

  def new
    @team = Team.new
    authorize @team
  end

  def create
    @team = Team.new(team_params)
    @team.sport = @sport
    @team.user = current_user
    puts @team
    authorize @team
    if @team.save
      redirect_to sport_path(@team.sport)
    else
      render :new
    end
  end

  # def edit
  # end

  private

  def set_sport
    @sport = Sport.find_by(id: params[:sport_id])
  end

  def team_params
    params.require(:team).permit(:name, :gender, :location, :sport_id)
  end
end
