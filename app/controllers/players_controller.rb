class PlayersController < ApplicationController
  before_action :set_team, only: [:create]

  def create
    @player = Player.new(player_params)
    @player.team = @team
    @player.user = current_user
    authorize @player
    if @player.save
      redirect_to team_path(@team)
    else
      render team_path(@team)
    end
  end

  private

  def set_team
    @team = Team.find_by(id: params[:team_id])
  end

  def player_params
    params.require(:player).permit(:first_name, :last_name, :age, :nationality, :position, :team_id)
  end
end
