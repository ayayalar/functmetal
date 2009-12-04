class FeaturesController < ApplicationController
  before_filter :entity
  def index
    @features = @entity.features
  end
  
  def new
    if !session[:user].nil?
      @feature = @entity.features.new
    else
      redirect_to new_user_path
    end
  end
  
  def create
    @feature = @entity.features.new(params[:feature])
      if @feature.save
      end
  end

  def show
    @feature = @entity.features.find(params[:id])
    convertor = Syntax::Convertors::HTML.for_syntax "xml"
    @feature.code = convertor.convert(@feature.code)
  end
  
  def edit
    @feature = @entity.features.find(params[:id])
  end
  
  def update
    @feature = @entity.features.find(params[:id])
    @feature.update_attributes(params[:feature])
  end
  
  private
  
  def entity
    @entity = Entity.find(params[:entity_id])
  end
end
