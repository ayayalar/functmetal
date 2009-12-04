class HomeController < ApplicationController
  def index
      @about = "About"
      @introduction =
      %{"I've developed FunctMetaL (Functional Meta Language) to increase the consistency, 
        standardization, readability, and to seperate the logic from the test data in test automation 
        development.

        FunctMetaL is a mini language that uses pre-defined XML markup for its syntax. 
        It's completely extensible through the concept of plug-ins. 
        "}
        
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
