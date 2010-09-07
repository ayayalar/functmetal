# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def highlight_code(code)
    CodeRay.scan(code , :xml).div(:line_numbers => :table)
  end
end
