class Feature < ActiveRecord::Base
  belongs_to :entity
  def to_param
    "#{id}-#{title.gsub(/\W/, '-').downcase}" 
  end
end
