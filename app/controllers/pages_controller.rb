class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home]



  def home
    @background = ["girl-alone-paintings.jpg", "concert.jpg", "classical_music.jpg"].sample
  end
end
