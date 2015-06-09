require 'kramdown'

class Slide
  def initialize(markdown_page)
    @markdown_page = markdown_page
    @content, @notes = @markdown_page.split "___"
  end

  def write_html_to(output)
    markdown_html = Kramdown::Document.new(@content).to_html

    slide_html = <<SLIDE
<section>
#{markdown_html}
<aside class="notes">
#{@notes || ''}
</aside>
</section>
SLIDE

    output.add_content(slide_html)
  end
end

