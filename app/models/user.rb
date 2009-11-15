class User < ActiveRecord::Base
  def to_param
    "#{id}-#{email.gsub(/\W/, '-').downcase}" 
  end
end
