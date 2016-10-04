class ExperiencesController < ApplicationController
  before_action :set_exp, only: [:show]

  def index
    @experiences = Experience.all
  end

  def show
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(exp_params)
    @experience.user_id = current_user.id
    @experience.save!
    redirect_to experience_path(@experience)
  end

private

  def set_exp
    @experience = Experience.find(params[:id])
  end

  def exp_params
    params.require(:experience).permit(:startexperience, :city, :title, :description)
  end

end
