class Home < ActiveRecord::Base
  set_table_name "home"
  
  def self.intro
    @introduction = Home.find_by_key("about").value
  end
  
  def self.example_code 
    example = Home.find_by_key("example").value
    CodeRay.scan(example , :xml).div
  end
end
