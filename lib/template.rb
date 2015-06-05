require 'erb'
require 'tilt'

class Template
  def render(body)
    Tilt.new(file_path).render do
      body
    end
  end

private
  def file_path
    template_path = './lib/templates'
    file_name = 'template.html.erb'
    File.expand_path(File.join(template_path, file_name))
  end
end

