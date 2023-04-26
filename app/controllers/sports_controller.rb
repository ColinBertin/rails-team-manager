class SportsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :new, :create ] # :show if we want to
  def index
    @sports = Sport.all
  end

  def show
    @sport = Sport.find(params[:id])
  end

  def new
    @sport = Sport.new
    # authorize @sport
  end

  def create
    @sport = Sport.new(sport_params)
    # @sport.user = current_user
    # authorize @sport
    if @sport.save
      redirect_to sports_path
    else
      render :new
    end
  end

  private

  def sport_params
    params.require(:sport).permit(:name)
  end
end
