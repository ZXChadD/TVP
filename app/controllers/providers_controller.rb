class ProvidersController < ApplicationController

  def index
    if current_provider.schedule.present?
      @schedule = Schedule.find_by(provider_id: current_provider.id)
      @provider = current_provider
    else
      @schedule = Schedule.new
    end
    @provider = current_provider
  end

  def show
    @provider = Provider.find(params[:id])
  end

  def like
    @provider = Provider.find(params[:id])
    @like = @provider.likes.new
    @like.user = current_user
    if @like.save
      redirect_back(fallback_location: users_path)
    else
      redirect_back(fallback_location: users_path)
    end
  end

  def unlike
    @provider = Provider.find(params[:id])
    @like = @provider.likes.find_by(user_id: current_user.id)
    @like.destroy
    redirect_back(fallback_location: users_path)
  end

end
