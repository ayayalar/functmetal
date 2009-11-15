class EntitiesController < ApplicationController
  def index
      @entities = Entity.find(:all)
  end

  def new
    @entity = Entity.new
  end
  
  def create
    @entity = Entity.new(params[:entity])
      if @entity.save 
      end
  end

  def update
  end

  def delete
  end

  def show
    @entity = Entity.find(params[:id])
  end

end
