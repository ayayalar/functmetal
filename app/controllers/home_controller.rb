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
        
      @example =
      %{
        <TestSuite>
          <Test>
            <!-- Launch ipconfig.exe -->
            <Process name="ipconfig" output="foo" error="err" timeout="5">
              <Arguments>
                <Argument />
              </Arguments>
            </Process>

            <!-- Declare a variable -->
            <Variable name="blank" value="" />

            <!-- Print out the output or the error message based on the outcome of ipconfig process -->
            <If test="$(err) -ne $(blank)">
              <Message text="Error: $(err) />
            </If>
            <Else>
              <Message text="Success: $(foo) />
            </Else>
          <Test>
        </TestSuite>
      }
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
