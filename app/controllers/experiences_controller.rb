class ExperiencesController < ApplicationController
  before_action :set_exp, only: [:show]

  def index
    @search = params[:search_term] if  !params[:search_term].nil?
    @category = params[:category]
    @experiences = Experience.all


  # filter on category
      if @category.present?
        @experiences = @experiences.where(category_id: params[:category])
      end
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
    params.require(:experience).permit(:startexperience, :city, :category_id, :title, :description)
  end

end
