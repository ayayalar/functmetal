class HomeController < ApplicationController
  def index
      @about = "About"
      @introduction = Home.find_by_key("about").value
      @example = Home.find_by_key("example").value
      
      convertor = Syntax::Convertors::HTML.for_syntax "xml"
      @example_out = convertor.convert(@example)
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
