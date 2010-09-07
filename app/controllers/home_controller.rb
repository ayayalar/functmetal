class HomeController < ApplicationController
  def index
      @about = "About"
      @introduction = Home.intro
      @example_out = Home.example_code
  end

  def new
    @home = Home.new
  end
  
  def create
    @home = Home.new(params[:home])
    @home.save
  end
  
  def show
  end
end
