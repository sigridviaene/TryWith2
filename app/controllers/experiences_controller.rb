class Experience < ApplicationRecord

before_action :exp_params, only [:show, :edit, :update, :destroy]
  belongs_to: user

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
    @experience.save
    redirect_to experience_path(@experience)
  end

  def edit
  end

  def update
    @experience.update(exp_params)
    redirect_to experience_path(@experience)

  end

  def destroy
    @experience.destroy
    redirect_to experience_path
  end


private

  def set_exp
    @experience = Experience.find(params[:id])
  end

  def exp_params
    params.require(:experience).permit(:startexperience, :user_id, :city, :title, :description)
  end

end
