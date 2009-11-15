class Entity < ActiveRecord::Base
  has_many :features, :dependent => :destroy
  def to_param
    "#{id}-#{title.gsub(/\W/, '-').downcase}" 
  end
end
