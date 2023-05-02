class SportsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ] # :show if we want to
  def index
    @sports = policy_scope(Sport)
  end

  def show
    @sport = Sport.find(params[:id])
    authorize @sport
  end

  def new
    @sport = Sport.new
    authorize @sport
  end

  def create
    @sport = Sport.new(sport_params)
    authorize @sport
    if @sport.save
      redirect_to sports_path
    else
      render :new
    end
  end

  def destroy
    @sport = Sport.find(params[:id])
    authorize @sport
    @sport.destroy
    redirect_to sports_path
  end

  private

  def sport_params
    params.require(:sport).permit(:name)
  end
end
