require 'dotenv'
Dotenv.load
require 'fastenv'

require_relative './markdown_pages'
require_relative './slides'
require_relative './output'

class MarkdownToReveal
  def self.convert
    markdown_pages = MarkdownPages.new(markdown_file_path)
    slides         = Slides.new(markdown_pages)
    output         = Output.new

    slides.write_html_to(output)

    output.save
  end

private
  def self.markdown_file_path
    path = Fastenv.markdown_path
    File.join(path, 'index.md')
  end
end

MarkdownToReveal.convert

