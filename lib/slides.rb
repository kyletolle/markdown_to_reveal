require_relative './slide'

class Slides
  def initialize(markdown_pages)
    @markdown_pages = markdown_pages
  end

  def write_html_to(output_file)
    @markdown_pages.each do |markdown_page|
      slide = Slide.new(markdown_page)
      slide.write_html_to(output_file)
    end
  end
end

