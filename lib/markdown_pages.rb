require 'forwardable'

class MarkdownPages
  include Enumerable
  extend Forwardable
  def_delegators :markdown_pages, :each

  def initialize(markdown_file_path)
    @markdown_file_path = markdown_file_path
  end

private
  def markdown_pages
    all_markdown_text = File.read(@markdown_file_path)
    all_markdown_text.split("------")
  end
end

